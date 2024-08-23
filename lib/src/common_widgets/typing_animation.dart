import 'dart:async';
import 'package:flutter/material.dart';



class TypewriterText extends StatefulWidget {
  final List<String> texts;
  final Duration typingSpeed;
  final Duration pauseDuration;
  final TextStyle? textStyle;
  final TextAlign textAlign;
  final Duration cursorBlinkDuration;

  const TypewriterText({
    super.key,
    required this.texts,
    this.typingSpeed = const Duration(milliseconds: 100),
    this.pauseDuration = const Duration(seconds: 3),
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.cursorBlinkDuration = const Duration(milliseconds: 500),
  });

  @override
  TypewriterTextState createState() => TypewriterTextState();
}

class TypewriterTextState extends State<TypewriterText> {
  String _displayText = "";
  int _textIndex = 0;
  int _charIndex = 0;
  bool _isDeleting = false;
  bool _showCursor = true;

  @override
  void initState() {
    super.initState();
    _startTyping();
    _startCursorBlink();
  }

  void _startTyping() {
    Timer.periodic(widget.typingSpeed, (timer) {
      setState(() {
        if (_isDeleting) {
          if (_charIndex > 0) {
            _charIndex--;
            _displayText = _displayText.substring(0, _charIndex);
          } else {
            _isDeleting = false;
            _textIndex = (_textIndex + 1) % widget.texts.length;
            _charIndex = 0;
          }
        } else {
          if (_charIndex < widget.texts[_textIndex].length) {
            _displayText += widget.texts[_textIndex][_charIndex];
            _charIndex++;
          } else {
            _isDeleting = true;
            _delayTyping(timer);
          }
        }
      });
    });
  }

  void _startCursorBlink() {
    Timer.periodic(widget.cursorBlinkDuration, (timer) {
      setState(() {
        _showCursor = !_showCursor;
      });
    });
  }

  void _delayTyping(Timer timer) {
    timer.cancel();
    Future.delayed(widget.pauseDuration, () {
      _startTyping();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_displayText${_showCursor ? "|" : ""}', // Append cursor at the end
      style: widget.textStyle,
      textAlign: widget.textAlign,
    );
  }
}

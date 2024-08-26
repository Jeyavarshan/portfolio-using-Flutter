import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:motion/motion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/bullet_widget.dart';

class AboutUsSection extends ConsumerWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.onSurface,
            tabs: [
              Tab(
                child: EncryptedText(
                  text: 'About Me',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Tab(
                child: EncryptedText(
                  text: 'Technology used as a Flutter Developer',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Tab(
                child: EncryptedText(
                  text: 'Experience',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAboutMeTab(),
            _buildFlutterDeveloperTab(),
            _buildExperienceTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutMeTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "I’m Jeyavarshan, a Flutter developer with 1 years of experience specializing in creating cross-platform mobile applications. I have a strong foundation in Dart and am adept at leveraging Flutter’s rich set of widgets to build intuitive and high-performance apps. My expertise also extends to developing APIs using ASP.NET, which complements my skills in building robust and scalable applications. I am experienced with state management solutions like Riverpod, which enables me to create well-structured and maintainable app architectures. Passionate about delivering exceptional user experiences, I continuously explore new technologies and best practices to enhance my development skills",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            "I have worked on various production-grade projects, where I design project architecture, structure, and patterns based on specific requirements. I have also led teams, promoting best practices and assisting in project development by suggesting new features and implementations in collaboration with managers.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          _buildBulletPoint(
              'Flutter & Dart: Expert in crafting responsive, high-performance mobile applications.'),
          _buildBulletPoint(
              'ASP.NET: Proficient in developing and managing APIs for backend integration.'),
          _buildBulletPoint(
              'State Management: Experienced with Riverpod for efficient state management and scalable app architecture.'),
        ],
      ),
    );
  }

  Widget _buildFlutterDeveloperTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "I’m Jeyavarshan, a Flutter developer with 1 year of experience specializing in creating cross-platform mobile applications. I have a strong foundation in Dart and am adept at leveraging Flutter’s rich set of widgets to build intuitive and high-performance apps.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          _buildBulletPoint(
              'Flutter & Dart: Expert in crafting responsive, high-performance mobile applications.'),
          _buildBulletPoint(
              'ASP.NET: Proficient in developing and managing APIs for backend integration.'),
          _buildBulletPoint(
              'State Management: Experienced with Riverpod for efficient state management and scalable app architecture.'),
          _buildBulletPoint(
              'UI/UX Design: Skilled in designing intuitive and engaging user interfaces.'),
        ],
      ),
    );
  }

  Widget _buildExperienceTab() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child:
                  SizedBox(width: 500, height: 400, child: MotionDemoPage())),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Bullet(text, style: const TextStyle(fontSize: 16)),
    );
  }
}

class EncryptedText extends StatefulWidget {
  final String text;
  final Duration revealSpeed;
  final TextStyle? textStyle;
  final TextAlign textAlign;

  const EncryptedText({
    super.key,
    required this.text,
    this.revealSpeed = const Duration(milliseconds: 100),
    this.textStyle,
    this.textAlign = TextAlign.start,
  });

  @override
  EncryptedTextState createState() => EncryptedTextState();
}

class EncryptedTextState extends State<EncryptedText> {
  String _displayText = "";
  String _currentText = "";
  int _charIndex = 0;
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _startEncryptionEffect();
  }

  void _startEncryptionEffect() {
    Timer.periodic(widget.revealSpeed, (timer) {
      setState(() {
        if (_charIndex < widget.text.length) {
          _currentText = widget.text;
          _displayText = _generateEncryptedText();
          _charIndex++;
        } else {
          _displayText = widget.text; // Show the final text
          timer.cancel();
        }
      });
    });
  }

  String _generateEncryptedText() {
    String encryptedText = "";
    for (int i = 0; i < _currentText.length; i++) {
      if (i < _charIndex) {
        encryptedText += _currentText[i];
      } else {
        encryptedText += _getRandomCharacter();
      }
    }
    return encryptedText;
  }

  String _getRandomCharacter() {
    const characters = 'AWX!@#%^&*()vwxyz0123456789';
    return characters[_random.nextInt(characters.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.textStyle,
      textAlign: widget.textAlign,
    );
  }
}

class MotionDemoPage extends StatefulWidget {
  const MotionDemoPage({super.key});

  @override
  State<MotionDemoPage> createState() => _MotionDemoPageState();
}

class _MotionDemoPageState extends State<MotionDemoPage> {
  @override
  Widget build(BuildContext context) {
    const cardBorderRadius = BorderRadius.all(Radius.circular(25));

    if (Motion.instance.isPermissionRequired &&
        !Motion.instance.isPermissionGranted) {
      showPermissionRequestDialog(
        context,
        onDone: () {
          setState(() {});
        },
      );
    }

    return Scaffold(
        body: Stack(children: [
      Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Motion.elevated(
          elevation: 70,
          borderRadius: cardBorderRadius,
          child: Card(
            child: Container(
              width: 500,
              height: 380,
              decoration: const BoxDecoration(borderRadius: cardBorderRadius),
              child: Motion.elevated(
                  elevation: 100,
                  shadow: false,
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      child: const Text("Menthee Technologies"))),
            ),
          ),
        ),
      ]))
    ]));
  }

  Future<void> showPermissionRequestDialog(BuildContext context,
      {required Function() onDone}) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Permission required'),
              content: const Text(
                  'On iOS 13+, you need to grant access to the gyroscope. A permission will be requested to proceed.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Motion.instance.requestPermission();
                  },
                  child: const Text('OK'),
                ),
              ],
            ));
  }
}

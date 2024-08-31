import 'dart:async';

import 'package:flutter/material.dart';
import 'package:port/src/core/assets/assets.gen.dart';

class CertificationSection extends StatefulWidget {
  const CertificationSection({super.key});

  @override
  State<CertificationSection> createState() => _CertificationSectionState();
}

class _CertificationSectionState extends State<CertificationSection> {
  List<Widget> wid = [
    NeonBorderImageDemo(image: Assets.certificates.iITMadras.path),
    NeonBorderImageDemo(image: Assets.certificates.iITMadras.path),
    NeonBorderImageDemo(image: Assets.certificates.iITMadras.path),
    NeonBorderImageDemo(image: Assets.certificates.iITMadras.path),
  ];
  @override
  Widget build(BuildContext context) {
    return ZoomSlider(
      child: wid,
    );
  }
}

class ZoomSlider extends StatefulWidget {
  const ZoomSlider(
      {super.key,
      required this.child,
      this.seconds = 3,
      this.zoomFactor = 3,
      this.viewPort = 0.6,
      this.radius = 0});

  final List<Widget> child;
  final double radius;
  final int seconds;
  final double viewPort;
  final double zoomFactor;

  @override
  State<ZoomSlider> createState() => _ZoomSliderState();
}

class _ZoomSliderState extends State<ZoomSlider> {
  double _currentPage = 0.0;
  late PageController _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: widget.viewPort,
    );

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
        if (_currentPage >= widget.child.length + 1) {
          _currentPage = 1;
          _pageController.jumpToPage(_currentPage.toInt());
        } else if (_currentPage <= 0) {
          _currentPage = widget.child.length.toDouble();
          _pageController.jumpToPage(_currentPage.toInt());
        }
      });
    });
    startTimer();
  }

  @override
  void dispose() {
    if (_timer != null) {
      _timer!.cancel();
    }
    _pageController.dispose();
    super.dispose();
  }

  void startTimer() {
    if (widget.seconds > 0) {
      _timer = Timer.periodic(Duration(seconds: widget.seconds), (timer) {
        setState(() {
          _currentPage++;

          if (_currentPage >= widget.child.length + 1) {
            _currentPage = 1;
            _pageController.jumpToPage(_currentPage.toInt());
          } else {
            _pageController.animateToPage(_currentPage.toInt(),
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear);
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: widget.child.length + 2,
      itemBuilder: (context, index) {
        int actualIndex =
            (index - 1 + widget.child.length) % widget.child.length;

        double scaleFactor =
            1.0 - ((_currentPage - index).abs() * widget.zoomFactor);

        scaleFactor = scaleFactor.clamp(0.8, 1.0);

        return Center(
          child: Transform.scale(
              scale: scaleFactor, child: widget.child[actualIndex]),
        );
      },
    );
  }
}

class NeonBorderImageDemo extends StatefulWidget {
  const NeonBorderImageDemo({super.key, required this.image});
  final String image;
  @override
  NeonBorderImageDemoState createState() => NeonBorderImageDemoState();
}

class NeonBorderImageDemoState extends State<NeonBorderImageDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 6),
      vsync: this,
    )..repeat();

    _colorAnimation = TweenSequence<Color?>([
      TweenSequenceItem(
        tween:
            ColorTween(begin: Colors.deepPurpleAccent, end: Colors.blueAccent),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.blueAccent, end: Colors.pinkAccent),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.pinkAccent, end: Colors.greenAccent),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.greenAccent, end: Colors.orangeAccent),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.orangeAccent, end: Colors.blueAccent),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: ColorTween(begin: Colors.blueAccent, end: Colors.purpleAccent),
        weight: 1.0,
      ),
    ]).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              width: 710,
              height: 500,
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: _colorAnimation.value!.withAlpha(50),
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: _colorAnimation.value!,
                    blurRadius: 40,
                    spreadRadius: 4,
                  ),
                ],
              ),
            ),
            Container(
              width: 700,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

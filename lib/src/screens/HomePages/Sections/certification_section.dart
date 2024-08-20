import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Certification extends StatefulWidget {
  const Certification({super.key});

  @override
  State<Certification> createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  final PageController _pageController = PageController(
    viewportFraction: 0.9,
  );
  int _pageIndex = 0;
  int imagesLength = 0;
  @override
  void initState() {
    _autoSlide();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 500,
          child: const Center(child: Text("Certifications")),
        ),
      ],
    );
  }

  Timer? _timer;
  void _autoSlide() {
    _timer?.cancel();
    if (imagesLength > 1) {
      _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
        setState(() {
          _pageIndex = (_pageIndex + 1) % imagesLength;
          _pageController.animateToPage(
            _pageIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        });
      });
    }
  }
}

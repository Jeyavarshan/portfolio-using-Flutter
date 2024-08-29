import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slimy_card_plus/slimy_card.dart';

class Certification extends StatefulWidget {
  const Certification({super.key});

  @override
  State<Certification> createState() => _CertificationState();
}

class _CertificationState extends State<Certification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        initialData: false,
        stream: slimyCard.stream,
        builder: ((BuildContext context, snapshot) {
          return ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const SizedBox(width: 100),
              SlimyCard(
                width: 700,
                topCardHeight: 400,
                color: Colors.black,
                topCardWidget: Image.asset(
                  fit: BoxFit.fill,
                  "assets/certificates/IIT-Madras.jpg",
                ),
                bottomCardWidget: bottomCardWidget(),
              ),
              const SizedBox(width: 100),
              SlimyCard(
                width: 700,
                topCardHeight: 400,
                color: Colors.black,
                topCardWidget: Image.asset(
                  fit: BoxFit.fill,
                  "assets/certificates/IIT-Madras.jpg",
                ),
                bottomCardWidget: bottomCardWidget(),
              ),
              const SizedBox(width: 100),
              SlimyCard(
                width: 700,
                topCardHeight: 400,
                color: Colors.black,
                topCardWidget: Image.asset(
                  fit: BoxFit.fill,
                  "assets/certificates/IIT-Madras.jpg",
                ),
                bottomCardWidget: bottomCardWidget(),
              ),
              const SizedBox(width: 100),
            ],
          );
        }),
      ),
    );
  }
}

Widget topCardWidget(String imagePath) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 200,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imagePath)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
      const Text(
        'The Rock',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      const SizedBox(height: 15),
      Text(
        'He asks, what your name is. But!',
        style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 12,
            fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: 10),
    ],
  );
}

// This widget will be passed as Bottom Card's Widget.
Widget bottomCardWidget() {
  return const Text(
    'It doesn\'t matter \nwhat your name is.',
    style: TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    textAlign: TextAlign.center,
  );
}

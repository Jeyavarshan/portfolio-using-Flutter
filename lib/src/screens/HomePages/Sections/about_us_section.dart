import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 1920,
          height: 500,
          color: Colors.redAccent,
          child: const Center(child: Text("About US")),
        )
      ],
    );
  }
}

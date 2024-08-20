// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:glitch_text/glitch_text.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Theme.of(context).colorScheme.onSurface,
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlitchText(
                data: "Projects",
                align: TextAlign.center,
                fontSize: 90,
                overflow: TextOverflow.ellipsis,
                font: "Times New Roman",
                offset: 3,
                fontColor: Theme.of(context).colorScheme.surface,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
            ],
          ),
        )
      ],
    );
  }
}

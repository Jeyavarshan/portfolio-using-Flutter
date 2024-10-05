import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glitch_text/glitch_text.dart';
import 'package:port/src/core/utils/responsive_widget.dart';

import '../../../common_widgets/typing_animation.dart';

class Homesection extends ConsumerWidget {
  const Homesection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveWidget(
      desktop: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 1050,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlitchText(
                    data: "Hi This is Jeyavarshan",
                    align: TextAlign.center,
                    fontSize: 90,
                    overflow: TextOverflow.ellipsis,
                    font: "Times New Roman",
                    offset: 3,
                    fontColor: Theme.of(context).colorScheme.onSurface,
                    wordSpacing: 1,
                    letterSpacing: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "I am a ",
                        style: TextStyle(fontSize: 20),
                      ),
                      TypewriterText(
                        texts: const [
                          "Flutter developer",
                          "Mobile Application Developer",
                          "Software Developer"
                        ],
                        textStyle: TextStyle(
                          fontSize: 25,
                          fontFamily: "Times New Roman",
                          color: Theme.of(context).colorScheme.onSurface,
                          letterSpacing: 1,
                          wordSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            height: 1050,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset("images.png"),
              ),
            ),
          )),
        ],
      ),
      mobile: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlitchText(
              data: "Hi This is Jeyavarshan",
              align: TextAlign.center,
              fontSize: 30,
              overflow: TextOverflow.ellipsis,
              font: "Times New Roman",
              offset: 3,
              fontColor: Theme.of(context).colorScheme.onSurface,
              wordSpacing: 1,
              letterSpacing: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "I am a ",
                  style: TextStyle(fontSize: 15),
                ),
                TypewriterText(
                  texts: const [
                    "Flutter developer",
                    "Mobile Application Developer",
                    "Software Developer"
                  ],
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontFamily: "Times New Roman",
                    color: Theme.of(context).colorScheme.onSurface,
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Image.asset("images.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

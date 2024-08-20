import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:glitch_text/glitch_text.dart';

class Homesection extends ConsumerWidget {
  const Homesection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
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
    );
  }
}

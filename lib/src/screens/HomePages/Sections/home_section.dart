import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:glitch_text/glitch_text.dart';

class Homesection extends StatelessWidget {
  const Homesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1050,
            color: Colors.black,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlitchText(
                  data: "Hi This is Jeyavarshan",
                  align: TextAlign.center,
                  fontSize: 90,
                  overflow: TextOverflow.ellipsis,
                  font: "Times New Roman",
                  offset: 3,
                  fontColor: Colors.white,
                  wordSpacing: 1,
                  letterSpacing: 1,
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          height: 1050,
          color: Colors.black,
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

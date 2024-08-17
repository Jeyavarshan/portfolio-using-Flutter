import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 1920,
          height: 500,
          color: Colors.blueGrey,
          child: const Center(
            child: Text("skills"),
          ),
        )
      ],
    );
  }
}

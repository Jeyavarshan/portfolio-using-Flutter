import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Skills extends ConsumerWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
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

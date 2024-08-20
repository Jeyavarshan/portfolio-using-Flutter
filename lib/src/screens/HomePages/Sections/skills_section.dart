import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Skills extends ConsumerWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> skills = [
      "Flutter",
      "Dart",
      "Riverpod",
      "HTML",
      "CSS",
      "JavaScript",
      "Java",
      "J2EE",
      "Hibernate",
      "JQuery",
      "SQL",
      "MySQL",
      "MongoDB",
      "Asp .NET"
    ];
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 6,
          mainAxisSpacing: 10,
          childAspectRatio: 16 / 9,
          crossAxisSpacing: 4),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            alignment: Alignment.center,
            width: 30,
            height: 20,
            child: Center(child: Text(skills[index])),
          ),
        );
      },
    );
  }
}

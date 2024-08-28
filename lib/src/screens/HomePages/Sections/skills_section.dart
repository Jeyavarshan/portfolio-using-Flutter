import 'package:flutter/material.dart';

import '../../../common_widgets/border_hover.dart';
import '../../../core/constants/network_images.dart';

class AnimatedSkills extends StatefulWidget {
  const AnimatedSkills({super.key});

  @override
  AnimatedSkillsState createState() => AnimatedSkillsState();
}

class AnimatedSkillsState extends State<AnimatedSkills> {
  final List<String> imageUrls = [
    SkillImages.HTML,
    SkillImages.CSS,
    SkillImages.js,
    SkillImages.java,
    SkillImages.Jquery,
    SkillImages.flutter,
    SkillImages.MongoDB,
    SkillImages.MySQL,
    SkillImages.SQL,
    SkillImages.dart,
    SkillImages.git,
    SkillImages.SVn,
    SkillImages.flutterFlow,
  ];
  final List<String> skillName = [
    "HTML",
    "CSS",
    "JavaScript",
    "JAVA",
    "JQuery",
    "Flutter",
    "MongoDB",
    "MySQL",
    "SQL",
    "Dart",
    "GIT",
    "SVN",
    "FlutterFlow"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 9 / 6,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: HoverCard(
            imageUrl: imageUrls[index],
            skillNames: skillName[index],
          ),
        );
      },
    );
  }
}

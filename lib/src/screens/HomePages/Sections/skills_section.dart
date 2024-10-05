import 'package:flutter/material.dart';
import 'package:port/src/core/utils/responsive_widget.dart';

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
    SkillImages.Riverpod,
    SkillImages.hibernate,
    SkillImages.j2EE,
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
    "FlutterFlow",
    "Riverpod",
    "Hibernate",
    "J2EE"
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktop: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.7 / 0.5),
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
      ),
      mobile: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.2 / 0.2),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: HoverCard(
              imageUrl: imageUrls[index],
              skillNames: skillName[index],
            ),
          );
        },
      ),
    );
  }
}

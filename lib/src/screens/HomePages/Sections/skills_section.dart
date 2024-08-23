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

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 9 / 5,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return HoverCard(imageUrl: imageUrls[index]);
      },
    );
  }
}

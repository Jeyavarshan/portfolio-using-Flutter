import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/bullet_widget.dart';

class AboutUs extends ConsumerWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        SizedBox(
          width: 1920,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "I’m Jeyavarshan , a Flutter developer with 1 years of experience specializing in creating cross-platform mobile applications. I have a strong foundation in Dart and am adept at leveraging Flutter’s rich set of widgets to build intuitive and high-performance apps. My expertise also extends to developing APIs using ASP.NET, which complements my skills in building robust and scalable applications. I am experienced with state management solutions like Riverpod, which enables me to create well-structured and maintainable app architectures. Passionate about delivering exceptional user experiences, I continuously explore new technologies and best practices to enhance my development skills.",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Bullet(
                  'Flutter & Dart: Expert in crafting responsive, high-performance mobile applications.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Bullet(
                  'ASP.NET: Proficient in developing and managing APIs for backend integration.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Bullet(
                  'State Management: Experienced with Riverpod for efficient state management and scalable app architecture.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Bullet(
                  'UI/UX Design: Skilled in designing intuitive and engaging user interfaces. ',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../widgets/bullet_widget.dart';

class AboutUsSection extends ConsumerWidget {
  const AboutUsSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Theme.of(context).colorScheme.onSurface,
            tabs: const [
              Tab(text: 'About Me'),
              Tab(text: 'Technology used as a Flutter Developer'),
              Tab(text: 'Experience'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAboutMeTab(),
            _buildFlutterDeveloperTab(),
            _buildExperienceTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutMeTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "I’m Jeyavarshan, a Flutter developer with 1 years of experience specializing in creating cross-platform mobile applications. I have a strong foundation in Dart and am adept at leveraging Flutter’s rich set of widgets to build intuitive and high-performance apps. My expertise also extends to developing APIs using ASP.NET, which complements my skills in building robust and scalable applications. I am experienced with state management solutions like Riverpod, which enables me to create well-structured and maintainable app architectures. Passionate about delivering exceptional user experiences, I continuously explore new technologies and best practices to enhance my development skills",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            "I have worked on various production-grade projects, where I design project architecture, structure, and patterns based on specific requirements. I have also led teams, promoting best practices and assisting in project development by suggesting new features and implementations in collaboration with managers.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          _buildBulletPoint(
              'Flutter & Dart: Expert in crafting responsive, high-performance mobile applications.'),
          _buildBulletPoint(
              'ASP.NET: Proficient in developing and managing APIs for backend integration.'),
          _buildBulletPoint(
              'State Management: Experienced with Riverpod for efficient state management and scalable app architecture.'),
        ],
      ),
    );
  }

  Widget _buildFlutterDeveloperTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            "I’m Jeyavarshan, a Flutter developer with 1 year of experience specializing in creating cross-platform mobile applications. I have a strong foundation in Dart and am adept at leveraging Flutter’s rich set of widgets to build intuitive and high-performance apps.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          _buildBulletPoint(
              'Flutter & Dart: Expert in crafting responsive, high-performance mobile applications.'),
          _buildBulletPoint(
              'ASP.NET: Proficient in developing and managing APIs for backend integration.'),
          _buildBulletPoint(
              'State Management: Experienced with Riverpod for efficient state management and scalable app architecture.'),
          _buildBulletPoint(
              'UI/UX Design: Skilled in designing intuitive and engaging user interfaces.'),
        ],
      ),
    );
  }

  Widget _buildExperienceTab() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Bullet(text, style: const TextStyle(fontSize: 16)),
    );
  }
}

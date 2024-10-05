import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:port/src/core/utils/responsive_widget.dart';
import 'package:port/src/screens/HomePages/Sections/about_me_section.dart';
import 'package:port/src/screens/HomePages/Sections/certification_section.dart';
import 'package:port/src/screens/HomePages/Sections/footer.dart';

import 'package:port/src/screens/HomePages/Sections/home_Section.dart';
import 'package:port/src/screens/HomePages/Sections/skills_section.dart';
import 'package:port/src/screens/Projects/projects.dart';
import 'package:port/src/services/app_theme.dart';

class Homepage extends ConsumerStatefulWidget {
  const Homepage({super.key});

  @override
  ConsumerState<Homepage> createState() => _HomepageState();
}

class _HomepageState extends ConsumerState<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget buildThemeToggle() {
      final isDarkMode = ref.watch(appThemeModeProvider) == AppThemeMode.dark;

      return IconButton(
        onPressed: () => ref.read(appThemeModeProvider.notifier).toggleTheme(),
        icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("My-Portfolio"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (context) => const Projects(),
                    ));
              },
              child: const Text("Projects")),
          buildThemeToggle()
        ],
      ),
      body: const SingleChildScrollView(
        child: ResponsiveWidget(
          desktop: Column(
            children: [
              Homesection(),
              SizedBox(width: 1920, height: 700, child: AboutUsSection()),
              AnimatedSkills(),
              SizedBox(width: 1920, height: 700, child: CertificationSection()),
              SizedBox(width: 1920, height: 550, child: ProfessionalFooter()),
            ],
          ),
          mobile: Column(
            children: [
              Homesection(),
              SizedBox(width: 1920, height: 700, child: AboutUsSection()),
              AnimatedSkills(),
              SizedBox(width: 1920, height: 700, child: CertificationSection()),
              SizedBox(width: 1920, height: 600, child: ProfessionalFooter()),
            ],
          ),
        ),
      ),
    );
  }
}

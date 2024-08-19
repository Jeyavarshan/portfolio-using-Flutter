import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:port/src/screens/HomePages/Sections/about_us_section.dart';

import 'package:port/src/screens/HomePages/Sections/home_Section.dart';
import 'package:port/src/screens/HomePages/Sections/skills_section.dart';
import 'package:port/src/services/app_theme.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        actions: [buildThemeToggle()],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Homesection(), AboutUs(), Skills()],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:port/src/screens/Projects/sections/Intro_section.dart';
import 'package:port/src/services/app_theme.dart';
import 'sections/projects_sections.dart';

class Projects extends ConsumerWidget {
  const Projects({super.key});

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
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        foregroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("My-Portfolio"),
        actions: [buildThemeToggle()],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            IntroSection(),
            ProjectsSections(),
            // Lottie.asset("assets/lottie/Animation.json")
          ],
        ),
      ),
    );
  }
}

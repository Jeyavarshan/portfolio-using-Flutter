import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:port/src/screens/HomePages/Sections/about_us_section.dart';

import 'package:port/src/screens/HomePages/Sections/home_Section.dart';
import 'package:port/src/screens/HomePages/Sections/skills_section.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("My-Portfolio"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Homesection(), AboutUs(), Skills()],
        ),
      ),
    );
  }
}

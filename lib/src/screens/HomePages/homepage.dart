import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:port/src/screens/HomePages/Sections/HomeSection.dart';

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My-Portfolio"),
      ),
      body: Column(
        children: [Homesection()],
      ),
    );
  }
}

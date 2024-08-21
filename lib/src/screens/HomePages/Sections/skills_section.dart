import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';

class Skills extends ConsumerStatefulWidget {
  const Skills({super.key});

  @override
  ConsumerState<Skills> createState() => _SkillsState();
}

class _SkillsState extends ConsumerState<Skills> {
  final List<String> imagePaths = [
    'assets/skills/CSS-Logo.png',
    'assets/skills/dart.png',
    'assets/skills/flutter-logo.png',
    'assets/skills/hibernate2.png',
    'assets/skills/HTML.png',
    'assets/skills/J2EE.png',
    'assets/skills/Java-Logo.png',
    'assets/skills/js.png',
    'assets/skills/MongoDB.png',
    'assets/skills/MySQl.jpg',
    'assets/skills/NET_Core_Logo.png',
    'assets/skills/SQL.png',
    'assets/skills/jQuery.png',
  ];

  List<Color> cardColors = [];

  @override
  void initState() {
    super.initState();
    _generateCardColors();
  }

  Future<void> _generateCardColors() async {
    List<Color> colors = [];
    for (String imagePath in imagePaths) {
      final PaletteGenerator paletteGenerator =
          await PaletteGenerator.fromImageProvider(
        AssetImage(imagePath),
      );
      // Use the dominant color or a fallback if no dominant color is found
      colors.add(paletteGenerator.dominantColor?.color ?? Colors.grey);
    }
    setState(() {
      cardColors = colors;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
        mainAxisSpacing: 20,
        childAspectRatio: 1.6,
        crossAxisSpacing: 20,
      ),
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        if (cardColors.isEmpty) {
          // If colors are still being fetched, show a loading spinner or placeholder color
          return const Center(child: CircularProgressIndicator());
        }

        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: isDarkMode ? Colors.white24 : Colors.black12,
              width: 2,
            ),
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color:
                  cardColors[index], // Apply dominant color to the background
            ),
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(imagePaths[index]),
            ),
          ),
        );
      },
    );
  }
}

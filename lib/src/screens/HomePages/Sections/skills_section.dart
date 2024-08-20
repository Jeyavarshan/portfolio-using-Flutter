import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/assets/assets.gen.dart';

class Skills extends ConsumerWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<AssetGenImage> skills = [Assets.skills.cSSLogo];

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
      itemCount: skills.length,
      itemBuilder: (context, index) {
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
              gradient: LinearGradient(
                colors: isDarkMode
                    ? [Colors.blueGrey.shade700, Colors.black]
                    : [Colors.grey.shade200, Colors.grey.shade300],
              ),
            ),
            child: Container(
              width: 500,
              // child: Image.asset(skills[index]),
            ),
          ),
        );
      },
    );
  }
}

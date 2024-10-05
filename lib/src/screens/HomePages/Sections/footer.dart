import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:port/src/core/utils/responsive_widget.dart';

class ProfessionalFooter extends StatelessWidget {
  const ProfessionalFooter({super.key});

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.surface;
    const Color accentColor = Color(0xFF4A60E6);
    Color textColor = Theme.of(context).colorScheme.onSurface;
    Color iconColor = Theme.of(context).colorScheme.onSurface;

    return ResponsiveWidget(
      desktop: Container(
        color: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Looking to Hire?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: textColor,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'I am a skilled Skilled Flutter with expertise in Flutter, Riverpod, Asp.NET.'
                'If you are looking for a committed professional to join your team, I would love to connect. '
                'I am open to both job opportunities and collaborative ventures across diverse industries.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor.withOpacity(0.9),
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Download Résumé',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Me ⬇️',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.linkedin, size: 28),
                  color: iconColor,
                  tooltip: 'LinkedIn',
                  onPressed: () {},
                  splashRadius: 24,
                ),
                const SizedBox(width: 18),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.github, size: 28),
                  color: iconColor,
                  tooltip: 'GitHub',
                  onPressed: () {},
                  splashRadius: 24,
                ),
                const SizedBox(width: 18),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.twitter, size: 28),
                  color: iconColor,
                  tooltip: 'Twitter',
                  onPressed: () {},
                  splashRadius: 24,
                ),
              ],
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavButton(
                    'Portfolio',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(width: 10),
                _buildNavButton(
                    'About Me',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(width: 10),
                _buildNavButton(
                    'Contact',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Email: jeyavarshanj72001@gmail.com | Phone: +91 9840161411',
              style: TextStyle(
                fontSize: 15,
                color: textColor.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Made With Flutter.',
              style: TextStyle(
                fontSize: 14,
                color: textColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        color: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Looking to Hire?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textColor,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'I am a skilled Skilled Flutter with expertise in Flutter, Riverpod, Asp.NET.'
                'If you are looking for a committed professional to join your team, I would love to connect. '
                'I am open to both job opportunities and collaborative ventures across diverse industries.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: textColor.withOpacity(0.9),
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Download Résumé',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Me ⬇️',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.linkedin, size: 24),
                  color: iconColor,
                  tooltip: 'LinkedIn',
                  onPressed: () {},
                  splashRadius: 22,
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.github, size: 24),
                  color: iconColor,
                  tooltip: 'GitHub',
                  onPressed: () {},
                  splashRadius: 22,
                ),
                const SizedBox(width: 12),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.twitter, size: 24),
                  color: iconColor,
                  tooltip: 'Twitter',
                  onPressed: () {},
                  splashRadius: 22,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                _buildNavButton(
                    'Portfolio',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(height: 10),
                _buildNavButton(
                    'About Me',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(height: 10),
                _buildNavButton(
                    'Contact',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Email: jeyavarshanj72001@gmail.com | Phone: +91 9840161411',
              style: TextStyle(
                fontSize: 13,
                color: textColor.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Made With Flutter.',
              style: TextStyle(
                fontSize: 12,
                color: textColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
      tablet: Container(
        color: primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Looking to Hire?',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: textColor,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'I am a skilled Skilled Flutter with expertise in Flutter, Riverpod, Asp.NET.'
                'If you are looking for a committed professional to join your team, I would love to connect. '
                'I am open to both job opportunities and collaborative ventures across diverse industries.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: textColor.withOpacity(0.9),
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 35),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Download Résumé',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact Me ⬇️',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.linkedin, size: 26),
                  color: iconColor,
                  tooltip: 'LinkedIn',
                  onPressed: () {},
                  splashRadius: 24,
                ),
                const SizedBox(width: 15),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.github, size: 26),
                  color: iconColor,
                  tooltip: 'GitHub',
                  onPressed: () {},
                  splashRadius: 24,
                ),
                const SizedBox(width: 15),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.twitter, size: 26),
                  color: iconColor,
                  tooltip: 'Twitter',
                  onPressed: () {},
                  splashRadius: 24,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavButton(
                    'Portfolio',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(width: 10),
                _buildNavButton(
                    'About Me',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
                const SizedBox(width: 10),
                _buildNavButton(
                    'Contact',
                    Theme.of(context).colorScheme.onSurface,
                    accentColor,
                    Theme.of(context).colorScheme.surface),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Email: jeyavarshanj72001@gmail.com | Phone: +91 9840161411',
              style: TextStyle(
                fontSize: 14,
                color: textColor.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Made With Flutter.',
              style: TextStyle(
                fontSize: 13,
                color: textColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(
      String text, Color buttonColor, Color hoverColor, Color textColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

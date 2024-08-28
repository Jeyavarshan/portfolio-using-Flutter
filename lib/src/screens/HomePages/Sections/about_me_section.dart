import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:motion/motion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/bullet_widget.dart';

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
            tabs: [
              Tab(
                child: EncryptedText(
                  text: 'About Me',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Tab(
                child: EncryptedText(
                  text: 'Technology used as a Flutter Developer',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              Tab(
                child: EncryptedText(
                  text: 'Experience',
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildAboutMeTab(),
            _buildFlutterDeveloperTab(),
            _buildExperienceTab()
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        alignment: Alignment.topCenter,
        width: 1000,
        height: 500,
        child: Column(
          children: [
            // Center(
            //     child:
            //         SizedBox(width: 500, height: 400, child: MotionDemoPage())),
            Container(
                width: 1000,
                height: 500,
                child: const SingleCompanyExperience()),
          ],
        ),
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

class EncryptedText extends StatefulWidget {
  final String text;
  final Duration revealSpeed;
  final TextStyle? textStyle;
  final TextAlign textAlign;

  const EncryptedText({
    super.key,
    required this.text,
    this.revealSpeed = const Duration(milliseconds: 100),
    this.textStyle,
    this.textAlign = TextAlign.start,
  });

  @override
  EncryptedTextState createState() => EncryptedTextState();
}

class EncryptedTextState extends State<EncryptedText> {
  String _displayText = "";
  String _currentText = "";
  int _charIndex = 0;
  final _random = Random();

  @override
  void initState() {
    super.initState();
    _startEncryptionEffect();
  }

  void _startEncryptionEffect() {
    Timer.periodic(widget.revealSpeed, (timer) {
      setState(() {
        if (_charIndex < widget.text.length) {
          _currentText = widget.text;
          _displayText = _generateEncryptedText();
          _charIndex++;
        } else {
          _displayText = widget.text; // Show the final text
          timer.cancel();
        }
      });
    });
  }

  String _generateEncryptedText() {
    String encryptedText = "";
    for (int i = 0; i < _currentText.length; i++) {
      if (i < _charIndex) {
        encryptedText += _currentText[i];
      } else {
        encryptedText += _getRandomCharacter();
      }
    }
    return encryptedText;
  }

  String _getRandomCharacter() {
    const characters = 'AWX!@#%^&*()vwxyz0123456789';
    return characters[_random.nextInt(characters.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.textStyle,
      textAlign: widget.textAlign,
    );
  }
}

class MotionDemoPage extends StatefulWidget {
  const MotionDemoPage({super.key});

  @override
  State<MotionDemoPage> createState() => _MotionDemoPageState();
}

class _MotionDemoPageState extends State<MotionDemoPage> {
  @override
  Widget build(BuildContext context) {
    const cardBorderRadius = BorderRadius.all(Radius.circular(25));

    if (Motion.instance.isPermissionRequired &&
        !Motion.instance.isPermissionGranted) {
      showPermissionRequestDialog(
        context,
        onDone: () {
          setState(() {});
        },
      );
    }

    return Scaffold(
        body: Stack(children: [
      Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Motion.elevated(
          elevation: 70,
          borderRadius: cardBorderRadius,
          child: Card(
            child: Container(
              width: 500,
              height: 380,
              decoration: const BoxDecoration(borderRadius: cardBorderRadius),
              child: Motion.elevated(
                  elevation: 100,
                  shadow: false,
                  child: Container(
                      alignment: Alignment.bottomLeft,
                      child: const Text("Menthee Technologies"))),
            ),
          ),
        ),
      ]))
    ]));
  }

  Future<void> showPermissionRequestDialog(BuildContext context,
      {required Function() onDone}) async {
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Permission required'),
              content: const Text(
                  'On iOS 13+, you need to grant access to the gyroscope. A permission will be requested to proceed.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Motion.instance.requestPermission();
                  },
                  child: const Text('OK'),
                ),
              ],
            ));
  }
}

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  static const String code = r"""
import 'dart:math' as math;

// Coffee class is the best!
class Coffee {
  late int _temperature;

  void heat() => _temperature = 100;
  void chill() => _temperature = -5;

  void sip() {
    final bool isTooHot = math.max(37, _temperature) > 37;
    if (isTooHot)
      print("myyy liiips!");
    else
      print("mmmmm refreshing!");
  }

  int? get temperature => temperature;
}
void main() {
  var coffee = Coffee();
  coffee.heat();
  coffee.sip();
  coffee.chill();
  coffee.sip();
}
/* And there
        you have it */""";

  static final syntaxViews = {
    "MonokaiSublime": SyntaxView(
        code: code,
        syntax: Syntax.DART,
        syntaxTheme: SyntaxTheme.monokaiSublime(),
        fontSize: 12.0,
        withZoom: true,
        withLinesCount: true,
        expanded: true,
        selectable: true)
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: syntaxViews.length,
        itemBuilder: (BuildContext context, int index) {
          String themeName = syntaxViews.keys.elementAt(index);
          SyntaxView syntaxView = syntaxViews.values.elementAt(index);
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 6.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.brush_sharp),
                      Text(
                        themeName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.brush_sharp),
                    ],
                  ),
                ),
                const Divider(),
                if (syntaxView.expanded)
                  Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      child: syntaxView)
                else
                  syntaxView
              ],
            ),
          );
        });
  }
}

class SingleCompanyExperience extends StatelessWidget {
  const SingleCompanyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.business,
                        color: Theme.of(context).colorScheme.primary, size: 40),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'MenThee Technologies',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        const Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          'April 2023 - Present',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Achievements:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '• Led a team of 10 developers to deliver the flagship project ahead of schedule.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '• Improved application performance by 30% through optimization techniques.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  '• Spearheaded the migration of the tech stack to modern frameworks.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Technologies Used:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Chip(
                      label: const Text('Flutter'),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Chip(
                      label: const Text('Dart'),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Chip(
                      label: const Text('RiverPod'),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Chip(
                      label: const Text('ASP .NET'),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    Chip(
                      label: const Text('SQL'),
                      backgroundColor:
                          Theme.of(context).colorScheme.inversePrimary,
                    ),
                    // Chip(
                    //   label: const Text('Kubernetes'),
                    //   backgroundColor: Colors.teal[50],
                    // ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

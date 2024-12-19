import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

import '../../../core/constants/network_images.dart';

class ProjectsSections extends StatelessWidget {
  const ProjectsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1000,
      child: const Column(
        children: [
          Spacer(),
          Row(
            children: [
              Spacer(),
              SizedBox(
                  width: 500,
                  height: 500,
                  child: MotionDemoPage(
                    title: "awda",
                    image: "",
                  )),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}

class MotionDemoPage extends StatefulWidget {
  const MotionDemoPage({super.key, required this.title, required this.image});

  @override
  State<MotionDemoPage> createState() => _MotionDemoPageState();
  final String title;
  final String image;
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
        Image.network(SkillImages.HTML),
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
                      child: Text(widget.title))),
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

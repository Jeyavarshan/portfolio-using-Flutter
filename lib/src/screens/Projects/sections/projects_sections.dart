import 'package:flutter/material.dart';

class ProjectsSections extends StatelessWidget {
  const ProjectsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 1000,
      child: Column(
        children: [
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 300,
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 300,
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const Spacer(),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 300,
              ),
              Container(
                height: 250,
                width: 250,
                color: Colors.orange,
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}

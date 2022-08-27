import 'dart:math';

import 'package:flutter/material.dart';
import '../data/steps.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({
    Key? key
  }) : super(key: key);

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  int currentStep = 0;

  void initState() {
    var rand = Random();
    currentStep = rand.nextInt(steps.length-1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: steps[currentStep].color,
      child: GridView(
        gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        primary: false,
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            color: Colors.orange[200],
            child:
              Text("Task ${steps[currentStep].name}"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            color: Colors.green[200],
            child:
              Text("Task ${steps[currentStep].name}"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            color: Colors.red[200],
            child:
              Text("Task ${steps[currentStep].name}"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            height: 500,
            color: Colors.purple[200],
            child:
              Text("Task ${steps[currentStep].name}"),
          ),
        ],
      ),
    );
  }
}

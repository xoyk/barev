import 'package:barev/games/PickPic01.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class FlowPage extends StatefulWidget {
  const FlowPage({Key? key}) : super(key: key);

  @override
  State<FlowPage> createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage> {

  // List<Step> _current_step = [];
  // final StepSlide currentStep = <StepSlide>;
  static List<Widget> steps = <Widget>[
    //const LessonPage(),
    const PickPic01(),
    const PickPic01(),
    const PickPic01(),
    const PickPic01(),
    const PickPic01(),
  ];

  @override
  void initState() {
    // TODO save generated levels to history
    // TODO pick one step slide
    super.initState();
  }

  // TODO Get user data of known and unknown words

  some() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Barev dzes!'),
        actions: [
          IconButton(
              onPressed: some(),
              icon: const Icon(Icons.list)
          )
        ],
      ),
      body:
        SafeArea(
          child:
            ListView.builder(
              itemCount: 25,
              // itemCount:  steps.length,
              itemBuilder: (BuildContext context, int index) {
                var rand = Random();
                var randIndex = rand.nextInt(steps.length-1);
                return steps[randIndex];
              },
            ),
          ),
      );
  }


  // задача этого метода
  // вернуть верстку готового упражнения
  // на этот момент должно быть
  // известно какие упражнения бывают и определить следующее
  //
  Widget buildFlowItem() {
    // Add generator() call

    return
      Container(
      height: 500,
      decoration: BoxDecoration(
          // color: Color.fromRGBO(rand.nextInt(256), rand.nextInt(256), rand.nextInt(256), 100),
          border: Border.all(
            color: const Color.fromRGBO(18, 18, 18, 100)
        )
      ),
      child:
        Container()
    );
  }
}
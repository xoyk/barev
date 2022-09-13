import 'package:barev/config/const.dart';
import 'package:barev/games/PickPic01.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class FlowPage extends StatefulWidget {
  const FlowPage({Key? key}) : super(key: key);

  @override
  State<FlowPage> createState() => _FlowPageState();
}

class _FlowPageState extends State<FlowPage> {

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(66),
          child: Container(
            margin: const EdgeInsets.only(top: 4, left: 12, right: 12),
            child: AppBar(
              title: const Text('Barev dzes!'),
              elevation: 0.2,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))
              ),
              backgroundColor: kGray,
              foregroundColor: Colors.white,
              actions: const [],
            ),
          ),
        ),
        body:
        ListView.builder(
          itemCount: 10,
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
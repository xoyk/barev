import 'package:barev/pages/cards.dart';
import 'package:flutter/material.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key? key}) : super(key: key);

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {

  @override
  Widget build(BuildContext context) {
    // final lessons = generateLessonSet();
    return CardsPage();
  }
}

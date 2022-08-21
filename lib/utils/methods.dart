import 'package:barev/pages/home.dart';
import 'package:barev/pages/lesson.dart';
import 'package:flutter/material.dart';

startLesson({required BuildContext context}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LessonPage()));
}

goHome({required BuildContext context}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
}

generateLessonSet(){
  return ['Cards', 'Cards', 'Constructor'];
}
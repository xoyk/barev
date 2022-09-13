import 'dart:math';

import 'package:barev/components/problem.dart';
import 'package:barev/data/words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/cards.dart';
import '../models/word.dart';
import 'package:barev/models/models.dart';

class PickPic01 extends StatefulWidget {
  const PickPic01({Key? key}) : super(key: key);

  @override
  State<PickPic01> createState() => _PickPic01State();
}

class _PickPic01State extends State<PickPic01> {

  List<Word> activeWords = [];
  int rightAnswer = 0;

  @override
  void initState() {

    words.shuffle();

    activeWords = words.sublist(0, 4);

    final rand = Random();
    rightAnswer = rand.nextInt(activeWords.length-1);

    super.initState();

    // TODO pick right answer
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.indigoAccent[600],
        margin: const EdgeInsets.only(bottom: 30),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Problem(answer: activeWords[rightAnswer].original),
            Consumer<CardManager001>(
              builder: (
              BuildContext context, cardManager001, Widget? child
              ) {
                return Cards(words: activeWords, manager: cardManager001);
            })
          ],
        ),
      ),
    );
  }
}
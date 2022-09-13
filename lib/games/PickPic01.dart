import 'dart:math';

import 'package:barev/components/problem.dart';
import 'package:barev/config/const.dart';
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

    activeWords = words.sublist(0, 2);

    final rand = Random();
    rightAnswer = rand.nextInt(activeWords.length-1);

    super.initState();

    // TODO pick right answer
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CardManager001())
      ],
      child: Center(
        child:
        Consumer<CardManager001>(
            builder: (
                BuildContext context, cardManager001, Widget? child
                ) {
                cardManager001.setRightAnswer(rightAnswer);
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                padding: const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: cardManager001.cardState == 'neutral' ? kLightGray : (cardManager001.rightAnswer == cardManager001.selectedCard ? kCorrect : kWrong),
                ),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Problem(answer: activeWords[rightAnswer].original),
                    // TODO Insert cards here
                    Cards(words: activeWords, manager: cardManager001),
                    Container(
                      padding: const EdgeInsets.all(6.0),
                      margin: const EdgeInsets.only(top: 6),
                      child: Text(
                          cardManager001.cardState == 'neutral' ? '' : (cardManager001.rightAnswer == cardManager001.selectedCard ?
                            'Правильно, ${activeWords[rightAnswer].original} (${activeWords[rightAnswer].transcript}) это ${activeWords[rightAnswer].translation}'  :
                            'Нет, ${activeWords[cardManager001.selectedCard].translation} это ${activeWords[cardManager001.selectedCard].original} (${activeWords[cardManager001.selectedCard].transcript}). ${activeWords[rightAnswer].original} (${activeWords[rightAnswer].transcript}) это ${activeWords[rightAnswer].translation}'
                          ),
                          style: const TextStyle(
                            fontSize: 14.0,
                          )
                      ),
                    )
                  ],
                ),
              );
            })
        ),
    );
  }
}
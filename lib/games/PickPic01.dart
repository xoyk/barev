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

  final List<Word> _active_words = [];

  @override
  void initState() {

    words.shuffle();

    // TODO refactor to while(i < 4)
    for(var i in words){
      if(_active_words.length < 4) {
        _active_words.add(words[_active_words.length]);
      }
    }

    // TODO pick right answer
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _active_words.shuffle();
    return Center(
      child: Container(
        color: Colors.indigoAccent[600],
        margin: const EdgeInsets.only(bottom: 30),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Problem(answer: _active_words[0].original),
            Consumer<CardManager001>(
              builder: (
              BuildContext context, cardManager001, Widget? child
              ) {
                return Cards(words: _active_words, manager: cardManager001);
            })
          ],
        ),
      ),
    );
  }
}
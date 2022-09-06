import 'package:barev/components/problem.dart';
import 'package:barev/data/words.dart';
import 'package:flutter/material.dart';
import '../components/cards.dart';
import '../models/word.dart';

class PickPic01 extends StatefulWidget {
  const PickPic01({Key? key}) : super(key: key);

  @override
  State<PickPic01> createState() => _PickPic01State();
}

class _PickPic01State extends State<PickPic01> {

  final List<Word> _active_words = [];

  @override
  void initState() {
    print('PickPic component started...');
    words.shuffle();

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
        margin: EdgeInsets.only(bottom: 30),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Problem(answer: _active_words[0].original),
              Cards(words: _active_words),
            ],
          ),
      ),
    );
  }
}
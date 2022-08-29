import 'package:barev/components/problem.dart';
import 'package:barev/data/words.dart';
import 'package:flutter/material.dart';
import 'package:barev/components/card.dart';
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

    print(_active_words[0].translation + '#translate');
    print(_active_words[1].translation);
    print(_active_words[2].translation);
    print(_active_words[3].translation);

    // TODO pick right answer


    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    print('correct answer');
    print(_active_words[0].original);
    _active_words.shuffle();

    return Container(
      color: Colors.indigoAccent[600],
      height: 500,
      child:
        Column(
          children: [
            Problem(answer: _active_words[0].original),
            Cards(words: _active_words),
            // Row(
            //   children: [
            //     Container(
            //       color: Colors.lightGreen,
            //       child: Text('sdlfksflskjf'),
            //     )
            //   ],
            // )
          ],
        ),
    );
  }
}

class Cards extends StatelessWidget {
  final List<Word> words;

  const Cards({
    Key? key,
    required this.words
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {

    words.shuffle();
    return Container(
        child:
            Container(
              child: Column(
                children: [
                  GridView.count(
                      padding: EdgeInsets.all(36),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      shrinkWrap: true,
                      children: [
                        Card4(word: words[1]),
                        Card4(word: words[0]),
                        Card4(word: words[3]),
                        Card4(word: words[2]),
                      ],
                  )
                ],
              ),
            )
    );
  }
}




import 'package:flutter/material.dart';

import '../models/word.dart';
import 'card.dart';

class Cards extends StatefulWidget {
  final List<Word> words;

  const Cards({
    Key? key,
    required this.words
  }) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {

    widget.words.shuffle();

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card4(word: widget.words[1]),
              const SizedBox(
                width: 12,
              ),
              Card4(word: widget.words[0]),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card4(word: widget.words[3]),
              const SizedBox(
                width: 12,
              ),
              Card4(word: widget.words[2]),
            ],
          )
        ],
    );
  }
}
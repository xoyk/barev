

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
  final _saved = <Word>{};

  @override
  Widget build(BuildContext context) {

    widget.words.shuffle();

    return Column(
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(36),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          children: [
            Card4(word: widget.words[1]),
            Card4(word: widget.words[0]),
            Card4(word: widget.words[3]),
            Card4(word: widget.words[2]),
          ],
        )
      ],
    );
  }
}
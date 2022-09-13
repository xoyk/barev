import 'package:flutter/material.dart';
import 'package:barev/models/models.dart';

import '../models/word.dart';
import 'card.dart';

class Cards extends StatefulWidget {
  final List<Word> words;
  final CardManager001 manager;

  const Cards({
    Key? key,
    required this.words,
    required this.manager,
  }) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCard(widget.words[1], 1),
              const SizedBox(
                width: 12,
              ),
              buildCard(widget.words[0], 0),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildCard(widget.words[3], 3),
              const SizedBox(
                width: 12,
              ),
              buildCard(widget.words[2], 2),
            ],
          )
        ],
    );
  }

  Widget buildCard(Word word, index) {
    return InkWell(
      onTap: () {
        widget.manager.selectCard(index);
      },
      highlightColor: Colors.blue.withOpacity(0.4),
      splashColor: Colors.grey.withOpacity(0.5),
      child:
      Card4(
          title: word.original,
          image: word.image,
          isSelected: widget.manager.selectedCard == index
      ),
    );
  }
}
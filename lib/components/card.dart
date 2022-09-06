
import 'package:barev/config/themes.dart';
import 'package:flutter/material.dart';

import '../models/word.dart';

class Card4 extends StatefulWidget {
  final Word word;

  const Card4({
    Key? key,
    required this.word
  }) : super(key: key);

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  @override
  Widget build(BuildContext context) {
    // проверяем, есть ли текущий элемент в сохраненных в _saved
    // final alreadySelected = _selected.contains(widget.word);
    return Container(
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(18, 18, 18, 100),
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/${widget.word.image}.png',
            ),
            Text(
                widget.word.translation,
                style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
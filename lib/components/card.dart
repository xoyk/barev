import 'package:flutter/material.dart';
import '../models/word.dart';
import '../config/const.dart';

class Card4 extends StatefulWidget {
  final Word word;
  final bool isSelected;
  final Function(int?)? onSelect;

  const Card4({
    Key? key,
    required this.word,
    this.isSelected = false, this.onSelect
  }) : super(key: key);

  @override
  State<Card4> createState() => _Card4State();
}

class _Card4State extends State<Card4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        boxShadow: widget.isSelected ? const [
          BoxShadow(
            color: kGray,
            offset: Offset(
              0.0,
              6.0,
            ),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxSh//
        ] : null,
        border: Border.all(
          color: kGray,
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
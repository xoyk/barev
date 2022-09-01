
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
  List<Word> _selected = [];

  @override
  Widget build(BuildContext context) {

    // проверяем, есть ли текущий элемент в сохраненных в _saved
    final alreadySelected = _selected.contains(widget.word);
    return Container(
      padding: EdgeInsets.all(16),
      // margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(18, 18, 18, 100),
          ),
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
          boxShadow: alreadySelected == true ? const [
            BoxShadow(
                color: Colors.black,
                offset: Offset(0, 6.0)
            )
          ] : null
      ),
        // color: Colors.red,
      child:
        GestureDetector(
          onTap: () {
            setState(() {
              if(alreadySelected){
                _selected.remove(widget.word);
              } else {
                _selected.clear();
                print(widget.word.translation);
                _selected.add(widget.word);
              }
            });
          },
          child:
            Column(
              children: [
                Expanded(
                  child:
                  Image.asset(
                      'assets/images/${widget.word.image}.png',
                      fit: BoxFit.cover
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.word.translation,
                  style: AppTheme.lightTextTheme.bodyText1,
                )
              ],
            ),
      )
    );
  }
}
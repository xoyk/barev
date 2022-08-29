
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
    print(_selected);

    return Container(
      padding: EdgeInsets.all(16),
      // margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(18, 18, 18, 100),
              width: alreadySelected == true ? 3 : 1
          ),
          borderRadius: BorderRadius.circular(16.0),
          // boxShadow: _selected == false ? const [
          //   BoxShadow(
          //       color: Colors.black,
          //       offset: Offset(0, 12.0)
          //   )
          // ] : null
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
          child: Column(
            children: [
              Image.asset(
                  'assets/images/${widget.word.image}.png',
                  height: 90,
                  fit: BoxFit.fitWidth
              ),
              Text(widget.word.translation)
            ],
          ),
        )
    );
  }
}
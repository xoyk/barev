import 'package:barev/models/word.dart';
import 'package:flutter/material.dart';

class CardTile extends StatefulWidget {
  const CardTile({
    Key? key,
    required this.word, selected=false,
  }) : super(key: key);

  final Word word;

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  String _selected = '';

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromRGBO(18, 18, 18, 100),
          width: 1
        ),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: _selected == widget.word.original ? const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 6.0)
          )
        ] : null
      ),
      child:
      GestureDetector(
        onTap: () {
          setState(() {
            _selected = widget.word.original;
          });
        },
        child: Expanded(
          flex: 1,
          child:
          Column(
            children: [
              Image.asset(
                  'assets/images/${widget.word.image}.png',
                  fit: BoxFit.contain
              ),
              Text(
                widget.word.translation,
                style: const TextStyle(
                  fontSize: 14
                ),
              )
            ],
          ),
        ),
      ),
);
  }
}

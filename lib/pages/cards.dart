import 'package:barev/components/checkbutton.dart';
import 'package:barev/components/problem.dart';
import 'package:barev/components/topbar.dart';
import 'package:barev/models/word.dart';
import 'package:flutter/material.dart';
import '../components/card.dart';
import '../data/words.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  List<Word> _active_cards = [];
  // int _selected = -1;

  @override
  void initState() {
    words.shuffle();

    for(var t in words){
      _active_cards.add(t);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body:
      SafeArea(
          child:
          Column(
            children: [
              // topBar,
              const TopBar(),
              Expanded(
                child:
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                  child:
                  Column(
                    children: [
                      Row(
                        children: const [
                          Problem()
                        ],
                      ),
                      Expanded(
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 12,
                            childAspectRatio: 0.8,
                            children: [
                              CardTile(word: _active_cards[0]),
                              CardTile(word: _active_cards[1]),
                              CardTile(word: _active_cards[2]),
                              CardTile(word: _active_cards[3]),
                            ],
                          )
                      ),
                      // checkButton,
                      const CheckButton()
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
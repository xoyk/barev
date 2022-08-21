import 'package:barev/components/checkbutton.dart';
import 'package:barev/components/problem.dart';
import 'package:barev/components/topbar.dart';
import 'package:barev/models/word.dart';
import 'package:flutter/material.dart';
import '../components/card.dart';
import '../data/words.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {

  List<Word> _active_cards = [];
  int _selectedCard = -1;

  @override
  void initState() {
    words.shuffle();

    for(var t in words){
      _active_cards.add(t);
    }
    super.initState();
  }

  // TODO Get user data of known and unknown words

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
                      ListView.builder(
                        itemCount: _active_cards.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CardTile(word: _active_cards[index]);
                        } ,
                      ),
                      // Expanded(
                      //     child: GridView.count(
                      //       crossAxisCount: 2,
                      //       mainAxisSpacing: 24,
                      //       crossAxisSpacing: 12,
                      //       childAspectRatio: 0.8,
                      //       children: [
                      //         CardTile(word: _active_cards[0]),
                      //         CardTile(word: _active_cards[1]),
                      //         CardTile(word: _active_cards[2]),
                      //         CardTile(word: _active_cards[3]),
                      //       ],
                      //     )
                      // ),
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
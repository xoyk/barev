// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget closeButton = Container(
      padding: const EdgeInsets.all(12),
      child: const Icon(
        Icons.close,
        size: 24,
      ),
    );
    
    Widget progressBar = Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(255, 18, 18, 18),
            width: 1,
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child:
            const LinearProgressIndicator
              (
              //color: Color.fromRGB(165, 122, 237),
              color: Color.fromARGB(255, 165, 122, 237),
              value: 0.1,
              minHeight: 8,
              backgroundColor: Colors.transparent,
            ),
          ),
    );

    Widget topBar = Container(
      margin: const EdgeInsets.only(left: 12, right: 24, bottom: 24),
      height: 48,
      child: Row(
        children: [
          closeButton,
          Expanded(
            child: progressBar
          ),
        ],
      ),
    );

    Widget problem = Container(
      margin: const EdgeInsets.only(bottom: 46),
      child:
        Expanded(
          child:
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Выберите правильное изображение',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  'բաժակ',
                  style: TextStyle(
                      fontSize: 21
                  ),
                )
              ],
            ),
        ),
    );

    Widget checkButton = Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(vertical: 14.5),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey
          ),
          borderRadius: BorderRadius.circular(16),
          // color: Colors.red
      ),
      child:
        Row(
          children: const [
            Expanded(
              child:
                Text(
                  'Далее',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 18, 18, 18),
                  ),
                ),
            ),
          ],
        ),

    );

    return MaterialApp(
      title: 'BarevDzes',
      home: Scaffold(
        body:
          SafeArea(
            child:
            Column(
              children: [
                topBar,
                Expanded(
                  child:
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                    child:
                    Column(
                      children: [
                        Row(
                          children: [
                            problem
                          ],
                        ),
                        const Expanded(
                          child: Cards()
                        ),
                        checkButton,
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ),
    );
  }
}

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {

  final List<Map> _cards = [
    {
      'trans': 'Стакан',
      'original': 'բաժաք',
      "image": "bajak",
      "id": 1
    },
    {
      'id': 2,
      'trans': 'Девочка',
      'original': 'աղջիկ',
      "image": "aghjik"
    },
    {
      'id': 3,
      'trans': 'Клубника',
      'original': 'ելաք',
      "image": "elak"
    },
    {
      'id': 4,
      'trans': 'Мальчик',
      'original': 'տղա',
      "image": "tgha"
    },
  ];

  int _selected = -1;

  @override
  Widget build(BuildContext context) {

    Container card(id, selected) {
      return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border:
              Border.all(
                  color: const Color.fromRGBO(18, 18, 18, 100),
                  width: 1
              ),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: _selected == id ? const [
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
                  _selected = id;
                });
              },
              child: Expanded(
                flex: 1,
                child:
                Column(
                  children: [
                    Image.asset(
                        'images/${_cards[id]['image']}.jpeg',
                        fit: BoxFit.contain
                    ),
                    Text(
                      _cards[id]['trans'],
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

    return
      Container(
        // color: Colors.yellow,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          childAspectRatio: 0.9,
          children: [
            card(0, false),
            card(1, false),
            card(2, true),
            card(3, false),
          ],
        )
      );
  }
}
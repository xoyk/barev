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
                      fontSize: 16
                  ),
                )
              ],
            ),
        ),
    );

    Widget checkButton = Container(
      padding: const EdgeInsets.all(50),
      child: const Text('Button'),
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
      'word': 'Кружка',
      "image": "001",
      "id": 1
    },
    {
      'id': 2,
      'word': 'Девочка',
      "image": "002"
    },
    {
      'id': 3,
      'word': 'Клубника',
      "image": "002"
    },
    {
      'id': 4,
      'word': 'Стакан',
      "image": "002"
    },
  ];

  @override
  Widget build(BuildContext context) {
    Container card(id) {
      return Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(
                color: const Color.fromRGBO(18, 18, 18, 100),
                width: 2
            ),
            borderRadius: const BorderRadius.all(
                Radius.circular(8.0)
            ),
          ),
          child:
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Image.asset(
                  'images/girl.jpeg',
                  // width: 600,
                  // height: 240,
                  fit: BoxFit.fitHeight
                ),
                Text(_cards[id]['word'])
              ],
            ),
          )
      );
    }

    return
      Container(
        color: Colors.yellow,
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 24,
          crossAxisSpacing: 12,
          children: [
            card(0),
            card(1),
            card(2),
            card(2),
          ],
        )
      );
  }
}
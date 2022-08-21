import 'package:barev/config/const.dart';
import 'package:barev/data/units.dart';
import 'package:barev/utils/methods.dart';
import 'package:flutter/material.dart';
import '../models/unit.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Unit> _units = [];
  // int _selected = -1;

  @override
  void initState() {

    for(var unit in units){
      _units.add(unit);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child:
            Center(
              child: GestureDetector(
                onTap: () {
                  startLesson(context: context);
                },
                child: ListView.builder(
                  itemCount: _units.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      // Text(_units[index].topic);
                      Container(
                        color: kViolet,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(24),
                        margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        child: Text(_units[index].topic),
                      );
                  }
                ),
              ),
            ),
        ),
      );
  }
}
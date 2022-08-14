import 'package:barev/config/const.dart';
import 'package:barev/utils/methods.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  print('tapped!');
                  loadSession(context: context);
                },
                child: Container(
                  color: kViolet,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(24),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: const Text('choose your level'),
                ),
              )
          ],
        ),
      ),
    );
  }
}
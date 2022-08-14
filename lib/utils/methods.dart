import 'package:barev/pages/cards.dart';
import 'package:flutter/material.dart';

loadSession({required BuildContext context}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Cards()));
}
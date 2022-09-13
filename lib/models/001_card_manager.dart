import 'package:flutter/material.dart';

class CardManager001 extends ChangeNotifier {
  int selectedCard = -1;

  void selectCard(int index) {
    selectedCard = index;
    notifyListeners();
  }
}
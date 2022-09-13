import 'package:flutter/material.dart';

class CardManager001 extends ChangeNotifier {
  int selectedCard = -1;
  int rightAnswer = -1;
  String cardState = 'neutral';

  void selectCard(int index) {
    selectedCard = index;
    cardState = 'active';
    notifyListeners();
  }

  void setRightAnswer(int index) {
    rightAnswer = index;
    notifyListeners();
  }
}
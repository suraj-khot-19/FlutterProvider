import 'package:flutter/material.dart';

class MyProivder with ChangeNotifier {
  List<int> number = [0];
  void addListNum() {
    int lastNum = number.last;
    number.add(lastNum + 1);
    notifyListeners();
  }
}

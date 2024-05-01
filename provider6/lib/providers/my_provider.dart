import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  List<int> selectedtemList = [];
  List<int> get list => selectedtemList;
  void addItem(int selectedIndex) {
    selectedtemList.add(selectedIndex);
    notifyListeners();
  }

  void removeItem(int selectedIndex) {
    selectedtemList.remove(selectedIndex);
    notifyListeners();
  }
}

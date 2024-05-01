import 'package:flutter/material.dart';

class MyProvider with ChangeNotifier {
  var _theme = ThemeMode.light;

  ThemeMode get themeMode => _theme;
  void setTheme(themeMode) {
    _theme = themeMode;
    notifyListeners();
  }
}

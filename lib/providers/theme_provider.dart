
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  Color _usedColorScheme = Colors.blue;

  ThemeMode get themeMode => _themeMode;
  Color get usedColorScheme => _usedColorScheme;

  set themeMode(ThemeMode mode) {
    if (_themeMode != mode) {
      _themeMode = mode;
      notifyListeners();
    }
  }

  set usedColorScheme(Color selectedColor) {
    _usedColorScheme = selectedColor;
    debugPrint("Changing color scheme");
    notifyListeners();
  }
}
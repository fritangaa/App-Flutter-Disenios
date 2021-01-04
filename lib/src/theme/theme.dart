import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _darkTheme = false;
  bool _customTheme = false;

  ThemeData _currentTheme;

  ThemeChanger(int theme) {
    switch (theme) {
      case 1:
        this._customTheme = false;
        this._darkTheme = false;
        this._currentTheme = ThemeData.light();
        break;
      case 2:
        this._customTheme = false;
        this._darkTheme = true;
        this._currentTheme = ThemeData.dark();
        break;
      case 3:
        this._customTheme = true;
        this._darkTheme = false;
        break;
      default:
        this._customTheme = false;
        this._darkTheme = false;
        this._currentTheme = ThemeData.light();
        break;
    }
  }

  bool get darkTheme => this._darkTheme;

  set darkTheme(bool val) {
    this._customTheme = false;
    this._darkTheme = val;

    if (val) {
      this._currentTheme = ThemeData.dark();
    } else {
      this._currentTheme = ThemeData.light();
    }

    notifyListeners();
  }

  bool get customTheme => this._customTheme;

  set customTheme(bool val) {
    this._darkTheme = false;
    this._customTheme = val;

    if (val) {
      this._currentTheme = ThemeData.dark().copyWith(
          accentColor: Color(0xff48A0EB),
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Color(0xff16202B),
          textTheme: TextTheme(body1: TextStyle(color: Colors.white)));
    } else {
      this._currentTheme = ThemeData.light();
    }

    notifyListeners();
  }

  ThemeData get currentTheme => this._currentTheme;
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myprovider extends ChangeNotifier{
  ThemeMode mode=ThemeMode.light;
  changeTheme(ThemeMode themeMode){
    mode=themeMode;
    notifyListeners();
  }
}
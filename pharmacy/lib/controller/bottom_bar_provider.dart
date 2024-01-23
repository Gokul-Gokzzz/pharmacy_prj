import 'package:flutter/material.dart';
import 'package:health/views/add_screen.dart';

import 'package:health/views/tab.dart/home_screen.dart';
import 'package:health/views/tab.dart/setting_screen.dart';

class BottomBarProvider extends ChangeNotifier {
  int currentindex = 0;
  bottomBar(index) {
    currentindex = index;
    notifyListeners();
  }

  final List tabs = [
    const HomeScreen(),
    const Add(),
    const Setting(),
  ];
}

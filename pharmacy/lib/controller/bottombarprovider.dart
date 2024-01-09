import 'package:flutter/material.dart';
import 'package:health/views_main/add_screen.dart';

import 'package:health/views_main/tab.dart/home_screen.dart';
import 'package:health/views_main/tab.dart/setting_screen.dart';

class BottomBarProvider extends ChangeNotifier{


int currentindex = 0;
  
bottom(index) {
                currentindex = index;
                notifyListeners();
              }
              final List tabs = [
  const HomeScreen(),
 
  const Add(),
  const Setting(),
  
];
}
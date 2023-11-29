import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

final items = [Icon(Icons.home),Icon(Icons.add_shopping_cart_rounded),Icon(Icons.settings)];
Widget bottombar(context){
  return  CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 168, 246),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {},
        items: items
      );
}
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health/screens_main/product_screen.dart';
import 'package:health/tab.dart/home_screen.dart';
import 'package:health/tab.dart/setting_screen.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
int currentindex = 0;

final List _tabs = [
  Home_screen(),
  Product(),
  Setting()
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width; 
    return Scaffold(
      body: _tabs [currentindex],
      bottomNavigationBar: 
      Container(
        width: size*1,
        color:  const Color.fromARGB(255, 3, 45, 79),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(
            onTabChange: (index){
              setState(() {
                currentindex = index;
              });
            },
            backgroundColor:  const Color.fromARGB(255, 3, 45, 79),
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Colors.yellow,
            padding: const EdgeInsets.all(13),
            gap: 10,
            tabs: const [
            GButton(icon: Icons.home_outlined,text: "Home",),
            GButton(icon: Icons.shopping_cart_checkout,text: "shop",), 
            GButton(icon: Icons.settings_outlined,text: "Settings",),
          ],),
        ),
      )
    );
  }
}
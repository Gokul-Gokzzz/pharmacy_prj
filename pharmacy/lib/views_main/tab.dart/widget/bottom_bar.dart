import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health/controller/bottombarprovider.dart';
import 'package:provider/provider.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final prd = Provider.of<BottomBarProvider>(context);
    double size = MediaQuery.of(context).size.width; 
    return Scaffold(
      body: prd.tabs [prd.currentindex],
      bottomNavigationBar: 
      Container(
        width: size*1,
        color:  const Color.fromARGB(255, 3, 45, 79),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(
            onTabChange: (index){
              prd.bottom(index);
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
            GButton(icon: Icons.add,text: "Add",), 
            GButton(icon: Icons.settings_outlined,text: "Settings",),
          ],),
        ),
      )
    );
  }
}
// int currentindex = 0;


import 'package:flutter/material.dart';
import 'package:health/tab.dart/cart_screen.dart';
import 'package:health/tab.dart/shopping_screen.dart';

class Home_scren extends StatefulWidget {
  const Home_scren({super.key});

  @override
  State<Home_scren> createState() => _Home_screnState();
}

class _Home_screnState extends State<Home_scren> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:10),
              child:PopupMenuButton(
                itemBuilder: (context)=>[
                  PopupMenuItem(child:
                   GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> bag()));
                    },
                     child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.shopping_bag_outlined)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text('bag'),
                      )
                                       ],
                                       ),
                   )),
                    PopupMenuItem(child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>cart()));
                        },
                       icon: Icon(Icons.favorite_border)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text('cart'),
                    )
                  ],
                  )),
                ],
                child:Icon(
                Icons.more_vert
                ),
              ),
            )
          ],
      ),
      body: Center(
        child: Text('xdctfgvbh'),
      ),
    );
  }
}
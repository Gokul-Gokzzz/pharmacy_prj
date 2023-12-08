import 'package:flutter/material.dart';
// import 'package:health/tab.dart/cart_screen.dart';
import 'package:health/tab.dart/shopping_screen.dart';

 appbar(){
  return AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blueGrey,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const bag()));
                  },
                  child: const Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.shopping_bag_outlined)),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text('bag'),
                      )
                    ],
                  ),
                )),
                // PopupMenuItem(
                //     child: Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.only(left: 10),
                //       child: IconButton(
                //           onPressed: () {
                //             Navigator.of(context).push(MaterialPageRoute(
                //                 builder: (context) => cart()));
                //           },
                //           icon: Icon(Icons.favorite_border)),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(left: 5),
                //       child: Text('cart'),
                //     )
                //   ],
                // )),
              ],
              child: const Icon(Icons.more_vert),
            ),
          )
        ],
      );
}
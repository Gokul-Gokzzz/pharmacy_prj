import 'package:flutter/material.dart';
import 'package:health/views/tab.dart/shopping_screen.dart';

appbar() {
  return AppBar(
    // ignore: prefer_const_constructors
    title: Text('Gk Pharma'),
    centerTitle: true,
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
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QuantityPage()));
              },
              child: const Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.shopping_bag_outlined)),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text('Cart'),
                  )
                ],
              ),
            )),
          ],
          child: const Icon(Icons.more_vert),
        ),
      )
    ],
  );
}

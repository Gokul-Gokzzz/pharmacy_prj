// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:health/widget/widget/med.dart';
import 'package:health/theme/colors.dart';
import 'package:health/widget/button.dart';
import 'package:health/widget/medlist.dart';

class MenuMedipage extends StatelessWidget {
  MenuMedipage({super.key});

  List medlist = [
    Med(
        name: 'sds',
        price: '23',
        imagePath:
            'passets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
        rating: '34'),
    Med(
        name: 'sds',
        price: '23',
        imagePath: 'assets/livogen.png',
        rating: '34'),
    Med(
        name: 'sds',
        price: '23',
        imagePath: 'assets/moxclave.jpg',
        rating: '34'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 8,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 38),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('redfdc'),
                    MyButton(text: 'efdv', onTap: () {}),
                  ],
                ),
                Image.asset(
                  'assets/Parcetamol.png',
                  height: 100,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'xdfgvh',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: medlist.length,
            itemBuilder: (context, index) {
              Medlist;
              return null;
            },
          ))
        ],
      ),
    );
  }
}

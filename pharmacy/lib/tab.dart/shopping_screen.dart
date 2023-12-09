
import 'package:flutter/material.dart';
import 'package:health/screens_main/detailes.dart';

class bag extends StatefulWidget {
  final String? data;
  final String? amount;
  final String? select;
  final String? image;

  const bag({Key? key,  this.data,  this.amount,  this.select,  this.image}) : super(key: key);

  @override
  State<bag> createState() => _bagState();
}
 

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                     Colors.blueGrey,
                ]
                )
            ),
          ),
        title: Text('Cart'),
        
        actions: [
          Icon(Icons.shopping_cart_checkout),
        ],
      ),
      body: Center(

      )
    );
  }
}

import 'package:flutter/material.dart';

class Medlist extends StatelessWidget {
  final  med;
  const Medlist({super.key, required this.med});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius:BorderRadius.circular(20), 
      ),
      child: Column(
        children: [
          Image.asset(
            med.imagePath,
            height: 148,
          ),

          Text(
            med.name,
            style:TextStyle(fontSize: 20) ,
          ),

          SizedBox(
            width: 160,
            child: Row(
              children: [

                Text('\$' + med.price),      
              ],
            ),
          )
        ],
      ),
    );
  }
}
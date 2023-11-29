import 'package:flutter/material.dart';

Widget set({icon, text}){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: SizedBox(width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: (){}, 
        icon: icon,
         label:text,
         ),
    ),
  );
}
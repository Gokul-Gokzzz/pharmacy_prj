
import 'dart:io';

import 'package:flutter/material.dart';



class ViewScreen extends StatelessWidget {
  final String name;
  final String address;
  final String medicine;
  final String age;
  final String imagePath;

  const ViewScreen({super.key, 
    required this.name,
    required this.address,
    required this.medicine,
    required this.age,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 56, 58),
        appBar: AppBar(  flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                  Colors.blue,
                   Colors.blueGrey ,
                  ]
                  )
              ),
            ),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
          ),
          backgroundColor: Colors.transparent,
          title: const Text('view'),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image:DecorationImage(image: AssetImage('assets/view.jpg'),fit: BoxFit.cover) 
            ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.transparent,
                      backgroundImage: FileImage(File(imagePath)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CardItem(
                    title: 'Name',
                    content: name,
                     color: false,
                  ),
                  CardItem(
                    title: 'Address',
                    content: address,
                     color: true,
                  ),
                  CardItem(
                    title: 'Medicine',
                    content: medicine,
                     color: false,
                  ),
                  CardItem(
                    title: 'Age',
                    content: age,
                   color: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String content;
   final bool color;

  const CardItem({super.key, 
    required this.title,
    required this.content,
     required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = color ? Colors.transparent : Colors.transparent;
    final textColor =
        color ?Colors.white : Colors.red;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
       color: bgColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                 color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold,
                    color: textColor
                   ),
            ),
          ],
        ),
      ),
    );
  }
}
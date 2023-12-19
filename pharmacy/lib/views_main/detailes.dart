import 'package:flutter/material.dart';

import 'package:health/widget/widget.dart';

class Detailes extends StatefulWidget {
  const Detailes({super.key});

  @override
  State<Detailes> createState() => _DetailesState();
}

class _DetailesState extends State<Detailes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detailes'),
      ),
      body: Column(
        children: [
          wTextformFeild(context, label: 'Name', hint: 'Name'),
          wTextformFeild(context, label: 'Phone Number', hint: 'Phone Number'),
          wTextformFeild(context, label: 'Address', hint: 'Address'),
const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){},
           child:const Text('Save') 
           )
        ],
      ),
    );
  }
}
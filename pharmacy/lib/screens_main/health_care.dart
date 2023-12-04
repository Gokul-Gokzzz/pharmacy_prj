import 'package:flutter/material.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Health Tips'),
      ),
      body: Container(
        child: Image(
          image: AssetImage(
            'assets/360_F_462160280_W3ZVodLcVwj7BkiZs8RP1wR5LCClQAm9.jpg'),
            height: MediaQuery.of(context).size.height*1,),
      )
    );
  }
}
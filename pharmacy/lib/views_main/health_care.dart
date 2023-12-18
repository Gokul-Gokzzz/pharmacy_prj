

import 'package:flutter/material.dart';
import 'package:health/widget/widget.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Health Tips'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // _showImageDialog(context);
            },
            child: Container(
              child: Image(
                image: AssetImage(
                    'assets/360_F_462160280_W3ZVodLcVwj7BkiZs8RP1wR5LCClQAm9.jpg'),
              ),
            ),
          ),
          Healthcare(),
        ],
      ),
    );
  }

  // void _showImageDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Dialog(
  //         child: InkWell(
  //           onTap: () {
  //             Navigator.of(context).pop();
  //           },
  //           child: Container(
  //             width: double.infinity,
  //             height: double.infinity,
  //             child: Image.asset(
  //               'assets/360_F_462160280_W3ZVodLcVwj7BkiZs8RP1wR5LCClQAm9.jpg',
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}

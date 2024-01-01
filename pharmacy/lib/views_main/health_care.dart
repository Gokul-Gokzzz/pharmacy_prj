

import 'package:flutter/material.dart';
import 'package:health/widget/widget.dart';

class Health extends StatelessWidget {
  const Health({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Health Tips'),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              // _showImageDialog(context);
            },
            child: const Image(
              image: AssetImage(
                  'assets/360_F_462160280_W3ZVodLcVwj7BkiZs8RP1wR5LCClQAm9.jpg'),
            ),
          ), 
          healthcare(),
        ],
      ),
    );
  }
}

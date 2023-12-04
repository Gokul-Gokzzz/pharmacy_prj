import 'package:flutter/material.dart';
import 'package:health/tab.dart/widget.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Account Detailes'),
      ),
      body: Column(
        children: [
          WTextformFeild(context, label: 'Name', hint: 'Name'),
          WTextformFeild(context, label: 'Phone Number', hint: 'Phone Number'),
          WTextformFeild(context, label: 'Address', hint: 'Address'),
          WTextformFeild(context, label: 'Mail', hint: 'Mail'),
          
SizedBox(height: 20,),
          ElevatedButton(onPressed: (){},
           child:Text('Submit') 
           )
        ],
      ),
    );
  }
}
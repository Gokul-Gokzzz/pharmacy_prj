


// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:health/main.dart';
import 'package:health/views_main/welcome_screen.dart';
import 'package:health/views_main/tab.dart/widget/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

@override
  void initState() {
    super.initState();
   log();
  }


@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: SizedBox(
        height: double.infinity,
        width: double.infinity,
          child: Image(image: AssetImage("assets/ph3.png"),fit:BoxFit.cover,),
          )
        ),
    );
  } 

  

Future<void> login() async{
 await Future.delayed(const Duration(seconds: 3));
 Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (ctx){
  return const Welcome();
 }));
}


Future <void> log()async{
  final sharedperfer = await SharedPreferences.getInstance();
  
  final userLog =sharedperfer.getBool(save_key_name);
  if(userLog == null || userLog == false){
   login();   
  }else{
    // ignore: prefer_const_constructors
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
  }
} 

}



import 'package:flutter/material.dart';
import 'package:health/screens_main/welcome_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

@override
  void initState() {
    super.initState();
    Login();
  }


Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
          child: Image(image: AssetImage("assets/ph3.png"),fit:BoxFit.cover,),
          )
        ),
    );
  } 

  

Future<void> Login() async{
 await Future.delayed(Duration(seconds: 5));
 Navigator.of(context).pushReplacement(
  MaterialPageRoute(
    builder: (ctx){
  return Welcome();
 }));
}




}
import 'package:flutter/material.dart';
import 'package:health/screens_main/home_screen.dart';
import 'package:health/screens_main/product_screen.dart';
import 'package:health/screens_main/setting_screen.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
           Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/ph1.jpg'),fit: BoxFit.cover)
        ),
        child:Padding(
          padding: const EdgeInsets.only(top:60,left: 22 ),
          child: Text('hello\nsign in!',style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
        ) ,

      ),
      Padding(
        padding: const EdgeInsets.only(top: 200.0),
        child: Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        ),
           image: DecorationImage(image: AssetImage('assets/ph2.png'),fit: BoxFit.cover)
       ),
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.check,color:Colors.grey ,),
                      label: Text('Gmail',style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(184, 23, 54, 1)
                      ) ,)
                    ),
                  ),
                  TextField(
                      decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off,color:Colors.grey ,),
                      label: Text('Password',style:TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(184, 23, 54, 1)
                      ) ,)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('forgot password?',style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromRGBO(40, 21, 55, 1)
                      ) ,),
                  ),
                  Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors:[
                          Color.fromRGBO(184, 23, 54, 1),
                            Color.fromRGBO(40, 21, 55, 1),
                        ] 
                        )
                    ),
                    child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => 
                    // Home_screen()
                    // Setting()
                    Product()
                    ));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('SIGN IN',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),),
              ),
                        ),
                  ),
                  SizedBox(height: 150,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Dont have account',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                        Text("Sign up",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black
                        ),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),

        ],
      )
      
    );
  }
}
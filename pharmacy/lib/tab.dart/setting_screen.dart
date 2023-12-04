import 'package:flutter/material.dart';
import 'package:health/screens_main/account.dart';
import 'package:health/screens_main/contact_us.dart';
import 'package:health/screens_main/order.dart';
import 'package:health/screens_main/privacy_policy.dart';
import 'package:health/screens_main/terms_condition.dart';
import 'package:health/tab.dart/widget.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          
           Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: CircleAvatar(
                radius: 200,
              ),
              
            ),
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          // image: DecorationImage(image: AssetImage('assets/ph1.jpg'),fit: BoxFit.cover)
        ),
        // child:Padding(
        //   padding: const EdgeInsets.only(top:60,left: 22 ),
         
        // ) ,

      ),
      Padding(
        padding: const EdgeInsets.only(top: 00.0),
        child: Container(
          width: double.infinity,
       decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        ),
           image: DecorationImage(image: AssetImage('assets/wp.png'),fit: BoxFit.cover)
       ),
       child: Column(
        children: [
          set(
            icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Account()));
            }, icon: Icon(Icons.person)),
            text: Text('𝐀𝐜𝐜𝐨𝐮𝐧𝐭')),
          set(
            icon: IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Order()));
            }, icon: Icon(Icons.shopping_cart_checkout)),
            text: Text('𝐘𝐨𝐮𝐫 𝐨𝐫𝐝𝐞𝐫')),
          set(icon:
           IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Privacy_Policy()));
            }, 
            icon: Icon(Icons.shopping_cart_checkout)),text: Text('𝐏𝐫𝐢𝐯𝐚𝐜𝐲')),
          // set(
          //   icon: IconButton(onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> bag()));
          //   }, icon: Icon(Icons.shopping_cart_checkout)),
          //   text: Text('𝐏𝐚𝐲𝐦𝐞𝐧𝐭 𝐦𝐞𝐭𝐡𝐨𝐝')),
          // set
          // (icon: IconButton(onPressed: (){
          //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> bag()));
          //   }, icon: Icon(Icons.shopping_cart_checkout)),
          // text: Text('𝐘𝐨𝐮𝐫 𝐜𝐨𝐮𝐩𝐨𝐧𝐬')),
          set
          (icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Contact()));
            }, icon: Icon(Icons.contact_phone_outlined)),
          text: Text('𝐂𝐨𝐧𝐭𝐚𝐜𝐭 𝐮𝐬')),
          set
          (icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> TermsAndCondition()));
            }, icon: Icon(Icons.note_sharp )),
          text: Text('𝐓𝐞𝐫𝐦𝐬 𝐚𝐧𝐝 𝐜𝐨𝐧𝐝𝐢𝐭𝐢𝐨𝐧𝐬 ')),
       
        ],
       ),
        )
      ),

      
        ],
      )
    
    );
  }
}
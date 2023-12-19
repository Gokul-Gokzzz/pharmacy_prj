import 'package:flutter/material.dart';
import 'package:health/views_main/login_screen.dart';
import 'package:health/views_main/about.dart';
import 'package:health/views_main/contact_us.dart';
import 'package:health/views_main/privacy_policy.dart';
import 'package:health/views_main/terms_condition.dart';
import 'package:health/widget/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                Colors.blueGrey,
              ],
            ),
          ),
        ),
         title: const Text('𝐒𝐞𝐭𝐭𝐢𝐧𝐠𝐬'),
        actions: [
          IconButton(onPressed: (){
            signout(context);
          }, icon:const Icon(Icons.exit_to_app)
          )
        ],
      ),
      body: Stack(
        children: [
          
           Container(
            height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/doct1.jpg'),fit: BoxFit.cover)
        ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 500),
              child: CircleAvatar(
                radius: 200,
              ),
              
            ),


      ),
      Padding(
        padding: const EdgeInsets.only(top: 00.0),
        child: Container(
          width: double.infinity,
       decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        ),
           image: DecorationImage(image: AssetImage('assets/doct.jpg'),fit: BoxFit.cover)
       ),
       child: Column(
        children: [
          set(
            icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const About()));
            }, icon: const Icon(Icons.app_registration_rounded)),
            text: const Text('𝐀𝐛𝐨𝐮𝐭 𝐀𝐩𝐩')),
       
          set(icon:
           IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Privacy()));
            }, 
            icon: const Icon(Icons.shopping_cart_checkout)),text: const Text('𝐏𝐫𝐢𝐯𝐚𝐜𝐲')),
      
          set
          (icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Contact()));
            }, icon: const Icon(Icons.contact_phone_outlined)),
          text: const Text('𝐂𝐨𝐧𝐭𝐚𝐜𝐭 𝐮𝐬')),
          set
          (icon:IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const TermsAndCondition()));
            }, icon: const Icon(Icons.note_sharp )),
          text: const Text('𝐓𝐞𝐫𝐦𝐬 𝐚𝐧𝐝 𝐜𝐨𝐧𝐝𝐢𝐭𝐢𝐨𝐧𝐬 ')),
       
        ],
       ),
        )
      ),

      
        ],
      )
    
    );
  }


  signout(BuildContext ctx)async{
    final sharedperfer = await SharedPreferences.getInstance();
    await sharedperfer.clear();
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>const Loginpage()), (route) => false);
  }
}
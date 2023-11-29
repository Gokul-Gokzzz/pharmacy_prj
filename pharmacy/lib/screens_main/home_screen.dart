


import 'package:flutter/material.dart';
import 'package:health/screens_main/product_screen.dart';
import 'package:health/screens_main/setting_screen.dart';
import 'package:health/tab.dart/app_bar.dart';
import 'package:health/tab.dart/bottom_bar.dart';


class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  //  final List _tabs = [
  //   Home_screen(),
  //   Product(),
  //   Setting()
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appbar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/ph3.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
             
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(115, 78, 74, 74),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: '𝕾𝖊𝖆𝖗𝖈𝖍 𝖋𝖔𝖗 𝖒𝖊𝖉𝖎𝖈𝖎𝖓𝖊𝖘',
                            suffixIcon: Icon(Icons.search),
                            
                            ),
                            ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage('assets/medicines.png'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),SizedBox(height: 10,),
                          Text(
                            '𝐌𝐞𝐝𝐢𝐜𝐢𝐧𝐞',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/istockphoto-1421629383-170667a.png'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),SizedBox(height: 10,),
                          Text(
                            '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  '𝐅𝐫𝐞𝐪𝐮𝐞𝐧𝐭𝐥𝐲 𝐛𝐨𝐮𝐠𝐡𝐭',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/istockphoto-1421629383-170667a.png'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),SizedBox(height: 10,),
                        Text(
                          '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/istockphoto-1421629383-170667a.png'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),SizedBox(height: 10,),
                        Text(
                          '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/istockphoto-1421629383-170667a.png'),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                        ),SizedBox(height: 10,),
                        Text(
                          '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  '𝐄𝐱𝐩𝐥𝐨𝐫𝐞 𝐚𝐬 𝐲𝐨𝐮 𝐥𝐢𝐤𝐞',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                            border: Border.all(width: 2),
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '𝐨𝐟𝐟𝐞𝐫 𝐳𝐨𝐧𝐞',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.percent_outlined)
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                            border: Border.all(width: 2),
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '𝐏𝐫𝐞𝐦𝐢𝐮𝐦',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.workspace_premium_outlined)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottombar(context),
    );
  }
}

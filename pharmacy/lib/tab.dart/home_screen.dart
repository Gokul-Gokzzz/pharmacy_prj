


import 'package:flutter/material.dart';
import 'package:health/screens_main/health_care.dart';
import 'package:health/screens_main/list_medicines.dart';
import 'package:health/screens_main/offer_zone.dart';
import 'package:health/screens_main/premium.dart';
import 'package:health/screens_main/product_screen.dart';
import 'package:health/tab.dart/app_bar.dart';
import 'package:health/tab.dart/bottom_bar.dart';
import 'package:health/tab.dart/shopping_screen.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appbar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/home.jpg'),fit: BoxFit.cover)),
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
                            suffixIcon: const Icon(Icons.search),
                            
                            ),
                            ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Product()));
                      },
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
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              image: const DecorationImage(
                                  image: AssetImage('assets/medicines.png'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                          ),const SizedBox(height: 10,),
                          const Text(
                            '𝐌𝐞𝐝𝐢𝐜𝐢𝐧𝐞',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Health()));
                      },
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
                                  const BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/istockphoto-1421629383-170667a.png'),
                                  fit: BoxFit.cover),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                          ),const SizedBox(height: 10,),
                          const Text(
                            '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const List_Of_Medicines()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                    boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              border: Border.all(width: 2),
                              color: Colors.grey,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))
                  ),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20,left: 20),
                      child: Text(
                        '𝐅𝐫𝐞𝐪𝐮𝐞𝐧𝐭𝐥𝐲 𝐛𝐨𝐮𝐠𝐡𝐭',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     GestureDetector(
              //       onTap: () {},
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 100,
              //             width: 100,
              //             decoration: BoxDecoration(
              //               border: Border.all(
              //                 color: Colors.grey,
              //                 width: 2,
              //               ),
              //               borderRadius: BorderRadius.all(Radius.circular(20)),
              //               color: Colors.white,
              //               image: DecorationImage(
              //                   image: AssetImage(
              //                       'assets/azithromycin-500-tablet.avif'),
              //                   fit: BoxFit.cover),
              //               boxShadow: [
              //                 BoxShadow(
              //                   color: Colors.black.withOpacity(0.5),
              //                   spreadRadius: 2,
              //                   blurRadius: 5,
              //                   offset: Offset(0, 3),
              //                 ),
              //               ],
              //             ),
              //           ),SizedBox(height: 10,),
              //           Text(
              //             '𝐀𝐳𝐢𝐭𝐡𝐫𝐨𝐦𝐲𝐜𝐢𝐧',
              //             style: TextStyle(fontWeight: FontWeight.bold),
              //           ),
              //         ],
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: () {},
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 100,
              //             width: 100,
              //             decoration: BoxDecoration(
              //               border: Border.all(
              //                 color: Colors.grey,
              //                 width: 2,
              //               ),
              //               borderRadius: BorderRadius.all(Radius.circular(20)),
              //               color: Colors.white,
              //               image: DecorationImage(
              //                   image: AssetImage(
              //                       'assets/rabi.jpg'),
              //                   fit: BoxFit.cover),
              //               boxShadow: [
              //                 BoxShadow(
              //                   color: Colors.black.withOpacity(0.5),
              //                   spreadRadius: 2,
              //                   blurRadius: 5,
              //                   offset: Offset(0, 3),
              //                 ),
              //               ],
              //             ),
              //           ),SizedBox(height: 10,),
              //           Text(
              //             '𝐑𝐚𝐛𝐢𝐩𝐫𝐨𝐬𝐨𝐥',
              //             style: TextStyle(fontWeight: FontWeight.bold),
              //           ),
              //         ],
              //       ),
              //     ),
              //     GestureDetector(
              //       onTap: () {},
              //       child: Column(
              //         children: [
              //           Container(
              //             height: 100,
              //             width: 100,
              //             decoration: BoxDecoration(
              //               border: Border.all(
              //                 color: Colors.grey,
              //                 width: 2,
              //               ),
              //               borderRadius: BorderRadius.all(Radius.circular(20)),
              //               color: Colors.white,
              //               image: DecorationImage(
              //                   image: AssetImage(
              //                       'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'),
              //                   fit: BoxFit.cover),
              //               boxShadow: [
              //                 BoxShadow(
              //                   color: Colors.black.withOpacity(0.5),
              //                   spreadRadius: 2,
              //                   blurRadius: 5,
              //                   offset: Offset(0, 3),
              //                 ),
              //               ],
              //             ),
              //           ),SizedBox(height: 10,),
              //           Text(
              //             '𝐍𝐞𝐨𝐩𝐚𝐧',
              //             style: TextStyle(fontWeight: FontWeight.bold),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  '𝐄𝐱𝐩𝐥𝐨𝐫𝐞 𝐚𝐬 𝐲𝐨𝐮 𝐥𝐢𝐤𝐞',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Offer()));
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            border: Border.all(width: 2),
                            color: Colors.grey,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: const Row(
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
                    // GestureDetector(
                    //   onTap: () {
                    //      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Premium()));
                    //   },
                    //   child: Container(
                    //     height: 50,
                    //     width: 130,
                    //     decoration: BoxDecoration(
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.black.withOpacity(0.5),
                    //             spreadRadius: 2,
                    //             blurRadius: 5,
                    //             offset: Offset(0, 3),
                    //           ),
                    //         ],
                    //         border: Border.all(width: 2),
                    //         color: Colors.grey,
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(10))),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           '𝐏𝐫𝐞𝐦𝐢𝐮𝐦',
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 20),
                    //         ),
                    //         SizedBox(
                    //           width: 10,
                    //         ),
                    //         Icon(Icons.workspace_premium_outlined)
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
     
    );
  }
}
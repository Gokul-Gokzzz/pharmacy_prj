
import 'package:flutter/material.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  State<Offer> createState() => _OfferState();
}
 

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Offer Place'),
        
        actions: [
          Icon(Icons.shopping_cart_checkout),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/p'),fit: BoxFit.cover)
          ),
          child: Column(
            children: [
              Card(
                
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/azithromycin-500-tablet.avif'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐀𝐳𝐢𝐭𝐡𝐫𝐨𝐦𝐲𝐜𝐢𝐧 '),
                          Text('8.4'),
                           Text('₹70',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('12%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                        
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/rabi.jpg'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐑𝐚𝐛𝐢𝐩𝐫𝐨𝐬𝐨𝐥'),
                          Text('2'),
                           Text('₹20',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('12%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                        
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'), // Replace with your actual image asset path
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐍𝐞𝐨𝐩𝐚𝐧'),
                          Text('1'),
                           Text('₹15',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('18%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                         
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/moxclave.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐌𝐨𝐱𝐜𝐥𝐚𝐯𝐞'),
                          Text('9'),
                           Text('₹60',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('15%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Column(
                        children: [
                         
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/diclofian.png'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐃𝐢𝐜𝐥𝐨𝐟𝐢𝐧𝐚𝐜'),
                          Text('3'),
                           Text('₹30',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('10%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                        
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/livogen.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐋𝐢𝐯𝐨𝐠𝐞𝐧'),
                          Text('₹14'),
                          Text('₹220',style: TextStyle(
                            decoration: TextDecoration.lineThrough
                            ),
                            ),
                            Text('12%  off for a strip')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                         
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

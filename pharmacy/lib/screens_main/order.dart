
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}
 

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        
        actions: [
          const Icon(Icons.shopping_cart_checkout),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: const BoxDecoration(
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐀𝐳𝐢𝐭𝐡𝐫𝐨𝐦𝐲𝐜𝐢𝐧 '),
                          Text('60'),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
                   
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐑𝐚𝐛𝐢𝐩𝐫𝐨𝐬𝐨𝐥'),
                          Text('30'),
                        ],
                      ),
                    ),
                   Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'), 
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐍𝐞𝐨𝐩𝐚𝐧'),
                          Text('10'),
                        ],
                      ),
                    ),
                       Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐌𝐨𝐱𝐜𝐥𝐚𝐯𝐞'),
                          Text('100'),
                        ],
                      ),
                    ),
                      Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐃𝐢𝐜𝐥𝐨𝐟𝐢𝐧𝐚𝐜'),
                          Text('25'),
                        ],
                      ),
                    ),  Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐋𝐢𝐯𝐨𝐠𝐞𝐧'),
                          Text('120'),
                        ],
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 30),
                       child: const Icon(Icons.edit),
                     ),
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

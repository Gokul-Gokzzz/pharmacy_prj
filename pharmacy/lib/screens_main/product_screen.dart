import 'package:flutter/material.dart';
import 'package:health/tab.dart/shopping_screen.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}
String qty = '1'; 

class _ProductState extends State<Product> {
  List<Map<String, dynamic>> products = [
    {'name': 'Azithromycin', 'price': '60', 'image': 'assets/azithromycin-500-tablet.avif'},
    {'name': 'Rabiprosol', 'price': '30', 'image': 'assets/DRABE.jpg'},
    {'name': 'Neopan', 'price': '10', 'image': 'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'},
    {'name': 'Moxclave', 'price': '100', 'image': 'assets/moxclave.jpg'},
    {'name': 'Diclofianac', 'price': '25', 'image': 'assets/diclofian.png'},
    {'name': 'Livogen', 'price': '120', 'image': 'assets/livogen.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.blue,
                  Colors.blueGrey,
                ])),
          ),
        title: Text('Product'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => bag()));
            },
            icon: Icon(Icons.shopping_cart_checkout_outlined),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/p'), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            Map<String, dynamic> product = products[index];
      
            return Card(
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(product['image']),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Text(product['name']),
                        Text(product['price']),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('𝐐𝐭𝐲 - '),
                            DropdownButton<String>(
                              value: qty,
                              onChanged: (String? newValue) {
                                setState(() {
                                  qty = newValue!;
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  value: "1",
                                  child: Text(' 1'),
                                ),
                                DropdownMenuItem(
                                  value: "2",
                                  child: Text(' 2'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


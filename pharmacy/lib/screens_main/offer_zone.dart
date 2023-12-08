import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String quantity;
  final String price;
  final String imagePath;

  const ProductCard({
    required this.name,
    required this.quantity,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 100,
            child: Image.asset(imagePath),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Text(quantity),
                Text(
                  '₹$price',
                  style: const TextStyle(decoration: TextDecoration.lineThrough),
                ),
                Text('$price% off for a strip'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
        title: const Text('Offer Place'),
        actions: const [Icon(Icons.shopping_cart_checkout)],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/p'), fit: BoxFit.cover)),
          child: const Column(
            children: [
              ProductCard(
                name: 'Azithromycin',
                quantity: '8.4',
                price: '70',
                imagePath: 'assets/azithromycin-500-tablet.avif',
              ),
              ProductCard(
                name: 'Rabiprosol',
                quantity: '2',
                price: '20',
                imagePath: 'assets/rabi.jpg',
              ),
              ProductCard(
                name: 'Neopan',
                quantity: '1',
                price: '15',
                imagePath: 'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
              ),
              ProductCard(
                name: 'Moxclave',
                quantity: '9',
                price: '60',
                imagePath: 'assets/moxclave.jpg',
              ),
              ProductCard(
                name: 'Diclofianac',
                quantity: '3',
                price: '30',
                imagePath: 'assets/diclofian.png',
              ),
              ProductCard(
                name: 'Livogen',
                quantity: '₹14',
                price: '220',
                imagePath: 'assets/livogen.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

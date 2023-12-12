import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/tab.dart/shopping_screen.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List name = [
    'Azithromycin',
    'Rabiprosol',
    'Neopan',
    'Moxclave',
    'Diclofianac',
    'Livogen'
  ];
  List price = ['60', '30', '10', '100', '25', '120'];
  List image = [
    'assets/azithromycin-500-tablet.avif',
    'assets/DRABE.jpg',
    'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
    'assets/moxclave.jpg',
    'assets/diclofian.png',
    'assets/livogen.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: const Text('Product'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => CartScreen()));
            },
            icon: const Icon(Icons.shopping_cart_checkout_outlined),
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/p'),
            fit: BoxFit.cover,
          ),
        ),
        child: ValueListenableBuilder(
          valueListenable: cartListNotifier,
          builder: (BuildContext ctx, List<CartList> cartList, Widget? child) {
            return ListView.builder(
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Card(
                    color: Colors.transparent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ListTile(
                      title: Text(name[index]),
                      subtitle: Text(price[index]),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(image[index]),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Create a CartList instance using the product details
                          CartList cartItem = CartList(
                            count: 1,
                            data: name[index],
                            amount: price[index],
                            select: 1, // Update with the appropriate value
                            image: image[index],
                          );

                          // Add the item to the cart
                          addCart(cartItem);

                          // Optionally, you can show a snackbar or any other UI feedback
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Item added to cart'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                        child: const Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
                      ),
                    ),
                  ),
                );
              },
              itemCount: name.length,
            );
          },
        ),
      ),
    );
  }
}

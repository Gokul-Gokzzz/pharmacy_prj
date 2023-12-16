
import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/model/model_product.dart';
import 'package:health/tab.dart/class.dart';
import 'package:health/tab.dart/shopping_screen.dart';
import 'package:hive/hive.dart';

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Azithromycin', price: 60),
    Product(name: 'Rabiprosol', price: 30),
    Product(name: 'Neopan', price: 10),
    Product(name: 'Moxclave', price: 100),
    Product(name: 'Diclofianac', price: 25),
    Product(name: 'Livogen', price: 120),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            icon: Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text('\$${products[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                addToCart(products[index], context);
              },
              child: Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }

  void addToCart(Product product, BuildContext context) async {
    int quantity = 1;
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter Quantity'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              quantity = int.tryParse(value) ?? 1;
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                addCartItem();
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
  
  void addCartItem() {}
}









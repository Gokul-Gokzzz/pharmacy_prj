
// import 'package:flutter/material.dart';
// import 'package:health/model/model_cart.dart';
// import 'package:health/model/model_product.dart';
// import 'package:health/tab.dart/shopping_screen.dart';
// import 'package:hive/hive.dart';

// class ProductPage extends StatelessWidget {
//   final List<Product> products = [
//     Product(name: 'Azithromycin', price: 60),
//     Product(name: 'Rabiprosol', price: 30),
//     Product(name: 'Neopan', price: 10),
//     Product(name: 'Moxclave', price: 100),
//     Product(name: 'Diclofianac', price: 25),
//     Product(name: 'Livogen', price: 120),
  
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product Page'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage()));
//             },
//             icon: Icon(Icons.shopping_bag_outlined),
//           )
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index].name),
//             subtitle: Text('\$${products[index].price.toString()}'),
//             trailing: ElevatedButton(
//               onPressed: () {
//                 addToCart(products[index], context);
//               },
//               child: Text('Add to Cart'),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   void addToCart(Product product, BuildContext context) async {
//     int quantity = 1;
//     await showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Enter Quantity'),
//           content: TextField(
//             keyboardType: TextInputType.number,
//             onChanged: (value) {
//               quantity = int.tryParse(value) ?? 1;
//             },
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () async {
//                 addCartItem(product,quantity);
//                 Navigator.of(context).pop();
//               },
//               child: Text('Add'),
//             ),
//           ],
//         );
//       },
//     );
//   }
  
  
//     void addCartItem(Product product, int quantity) async {

//   // Check if the product is already in the cart
//   int index = Box.values.toList().indexWhere((item) => item.product.name == product.name);

//   if (index != -1) {
//     CartItem existingProduct = Box.getAt(index) as CartItem;
//     existingProduct.quantity += quantity;
//     Box.putAt(index, existingProduct);
//   } else {
//     // If the product is not in the cart, add a new item
//     final CartItem cartItem = CartItem(name:, price:);
//     Box.add(cartItem);
//   }

 
// }

  
// }


import 'package:flutter/material.dart';
import 'package:health/functions/cart/function_cart.dart';
import 'package:health/model/fixed_cart/model_cart.dart';
import 'package:health/views_main/tab.dart/shopping_screen.dart';


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder<List<CartItem>>(
              valueListenable: CartListNotifier,
              builder: (context, cartItems, _) {
                return ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cartItems[index].name),
                      subtitle:
                          Text('\$${cartItems[index].price.toString()}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              deleteCartItem(index);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuantityPage()),
              );
            },
            child: const Text('Proceed to Checkout'),
          ),
        ],
      ),
    );
  }
}







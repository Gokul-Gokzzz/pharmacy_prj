// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';

// class CartScreen extends StatefulWidget {
//   final CartList? selectedItem;

//   CartScreen({
//     Key? key,
//     this.selectedItem,
//   }) : super(key: key);

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   double totalCost = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           centerTitle: true,
//           title: const Text(
//             "Cart",
//             style: TextStyle(
//               color: Color.fromARGB(255, 0, 0, 0),
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           flexibleSpace: Container(
//             color: const Color.fromARGB(255, 255, 255, 255),
//           ),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: ValueListenableBuilder(
//                 valueListenable: cartListNotifier,
//                 builder: (BuildContext context,List<CartList> cartListNotifier, Widget? child) => 
//                  ListView.builder(
//                   itemCount: cartListNotifier.length,
//                   itemBuilder: (context, index) {
//                     if (index < cartListNotifier.length) {
//                       final cartdata = cartListNotifier[index];
//                       int cost = int.tryParse(cartdata.amount) ?? 0;
                
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(25),
//                           child: Card(
//                             elevation: 3,
//                             shadowColor: Colors.grey,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                             child: ListTile(
//                               tileColor: Colors.white,
//                               leading: Container(
//                                 height: double.infinity,
//                                 width: 100,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8),
//                                   image: cartdata.image != null
//                                       ? DecorationImage(
//                                           image:
//                                               FileImage(File(cartdata.image)),
//                                           fit: BoxFit.cover,
//                                         )
//                                       : null,
//                                 ),
//                               ),
//                               title: Text(
//                                 cartdata.data,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               subtitle: Row(
//                                 children: [
//                                   // QuantityPickerButton(
//                                   //   value: cartdata.select,
//                                   //   onIncrease: (count) {
//                                   //     setState(() {
//                                   //       cartitems[index].count =
//                                   //           (cartitems[index].count ?? 0) + 1;
//                                   //     });
//                                   //   },
//                                   //   onDecrease: (count) {
//                                   //     if ((cartitems[index].count ?? 0) > 1) {
//                                   //       setState(() {
//                                   //         cartitems[index].count =
//                                   //             (cartitems[index].count ?? 0) - 1;
//                                   //       });
//                                   //     }
//                                   //   },
//                                   // ),
//                                   IconButton(
//                                     icon: const Icon(Icons.delete,
//                                         color: Colors.red),
//                                     onPressed: () {
//                                       // showDeleteConfirmationDialog(
//                                       //     index, context);
//                                     },
//                                   ),
//                                   Text(
//                                     '\$${cost * (cartListNotifier[index].count ?? 0)}',
//                                     style: const TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.green,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     }
//                   },
//                 ),
//               ),
//             ),
           
//             Container(
//               width: double.infinity,
//               color: Colors.white,
//               child: ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     // showClearCartConfirmationDialog(context);
//                   });
//                 },
//                 child:  Text('Clear Cart'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }


  
// // Future<void> showClearCartConfirmationDialog(BuildContext ctx) async {
// //   return showDialog<void>(
// //     context: ctx,
// //     builder: (BuildContext context) {
// //       return AlertDialog(
// //         content: const Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: <Widget>[
// //             Icon(Icons.warning,
// //                 color: Colors.orange, size: 50), // Add caution icon
// //             SizedBox(height: 16),
// //             Text('Clear Cart', style: TextStyle(fontSize: 18)),
// //             Text('Are you sure you want to clear your entire cart?'),
// //           ],
// //         ),
// //         actions: <Widget>[
// //           TextButton(
// //             child: const Text('Cancel'),
// //             onPressed: () {
// //               Navigator.of(context).pop();
// //             },
// //           ),
// //           TextButton(
// //             child: const Text(
// //               'Confirm',
// //               style: TextStyle(color: Colors.red),
// //             ),
// //             onPressed: () {
// //               // clearCart();
// //               cartListNotifier.value = [];

// //               Navigator.of(context).pop();
// //             },
// //           ),
// //         ],
// //       );
// //     },
// //   );
// // }
// }


// import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';

// class CartScreen extends StatefulWidget {
//   @override
//   _CartScreenState createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   late Box<CartList> cartBox;
//   late List<CartList> cartItems;

//   @override
//   void initState() {
//     super.initState();
//     cartBox = Hive.box<CartList>('cartBox');
//     cartItems = cartBox.values.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: ListView.builder(
//         itemBuilder: (ctx, index) {
//           return Padding(
//             padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
//             child: Card(
//               color: Colors.white,
//               elevation: 10,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: ListTile(
//                 title: Text(cartItems[index].data),
//                 subtitle: Text(cartItems[index].amount),
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(cartItems[index].image),
//                 ),
//                 trailing: ElevatedButton(
//                   style: ButtonStyle(
//                     overlayColor: MaterialStateProperty.all(Colors.amber),
//                   ),
//                   onPressed: () {
//                     removeCartItem(cartItems[index]);
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('Item deleted from cart'),
//                         duration: Duration(seconds: 2),
//                       ),
//                     );
//                   },
//                   child: const Text('Delete'),
//                 ),
//               ),
//             ),
//           );
//         },
//         itemCount: cartItems.length,
//       ),
//     );
//   }
// }


// CartPage.dart
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/tab.dart/class.dart'; // Import your CartItem class
import 'package:health/functions/functions.dart'; // Import your functions

class Cartpd {
  final Product product;
  int quantity;

  Cartpd({required this.product, required this.quantity});
}



class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder<List<CartList>>(
              valueListenable: cartListNotifier,
              builder: (context, cartItems, _) {
                return ListView.builder(
                  itemCount: cartItems.length,
                  
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(cartItems[index].product.name),
                      subtitle: Text('\$${cartItems[index].product.price.toString()}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Quantity: ${cartItems[index].quantity}'),
                          IconButton(
                            icon: Icon(Icons.delete),
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
        ],
      ),
    );
  }

  void deleteCartItem(int index) {
    deletecart(index);
  }
}



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



import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/model/model_cart.dart';

class CartScreen extends StatelessWidget {
  List<String>? name;
  List<String>? amount;
  List<String>? image;
  bool? isClicked;
   CartScreen({super.key, this.isClicked,this.name,this.amount,this.image});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemBuilder: (ctx, index) {
            if(isClicked==true){
              Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Card(
                color: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  title: Text(name![index]),
                  subtitle: Text(amount![index]),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image![index]),
                  ),
                  trailing: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor:MaterialStatePropertyAll(Colors.amber)
                    ),
                    onPressed: () {
                        CartList cartItem = CartList(
                        count: index,
                        data: name![index],
                        amount: amount![index],
                        select: index,
                        image: image![index],
                      );
                      addCart(cartItem);
                      

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Item added to cart'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartScreen(isClicked: isClicked,)),
                      );
                    },
                    child: const Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
                  ),
                ),
              ),
            );
            }
            
          },
          itemCount: name!.length,
        );
  }
}


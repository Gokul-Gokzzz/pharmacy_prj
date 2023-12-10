import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/functions/functions.dart';
import 'package:health/model/model.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/screens_main/edit.dart';
import 'package:health/screens_main/edit_cart.dart';
import 'package:health/screens_main/view_cart.dart';
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
  List cartList = [];
  String _search = '';
  List<CartList> searchlist = [];
  List<CartList> ctList = [];

  void Result() {
    setState(() {
      searchlist = cartListNotifier.value
          .where((CartList) =>
              CartList.data.toLowerCase().contains(_search.toLowerCase()))
          .toList();
    });
  }

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
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => bag()));
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
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Add qty'),
                                content:  TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Add your Qty'
                                ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Close the dialog
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Perform action when the "OK" button is pressed
                                      print('OK button pressed');
                                      Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(builder: (context)=>bag())); // Close the dialog
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            },
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


// import 'package:flutter/material.dart';
// import 'package:health/tab.dart/shopping_screen.dart';

// class Product extends StatefulWidget {
//   const Product({Key? key}) : super(key: key);

//   @override
//   State<Product> createState() => _ProductState();
// }
// String qty = '1'; 

// class _ProductState extends State<Product> {
//   List<Map<String, dynamic>> products = [
//     {'name': 'Azithromycin', 'price': '60', 'image': 'assets/azithromycin-500-tablet.avif'},
//     {'name': 'Rabiprosol', 'price': '30', 'image': 'assets/DRABE.jpg'},
//     {'name': 'Neopan', 'price': '10', 'image': 'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'},
//     {'name': 'Moxclave', 'price': '100', 'image': 'assets/moxclave.jpg'},
//     {'name': 'Diclofianac', 'price': '25', 'image': 'assets/diclofian.png'},
//     {'name': 'Livogen', 'price': '120', 'image': 'assets/livogen.png'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                   Colors.blue,
//                   Colors.blueGrey,
//                 ])),
//           ),
//         title: Text('Product'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) => bag()));
//             },
//             icon: Icon(Icons.shopping_cart_checkout_outlined),
//           )
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage('assets/p'), fit: BoxFit.cover),
//         ),
//         child: ListView.builder(
//           itemCount: products.length,
//           itemBuilder: (context, index) {
//             Map<String, dynamic> product = products[index];
      
            // return Card(
            //   child: Row(
            //     children: [
            //       Container(
            //         height: 100,
            //         width: 100,
            //         child: Image.asset(product['image']),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 20),
            //         child: Column(
            //           children: [
            //             Text(product['name']),
            //             Text(product['price']),
            //           ],
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.only(left: 50),
            //         child: Column(
            //           children: [
            //             Row(
            //               children: [
            //                 Text('𝐐𝐭𝐲 - '),
            //                 DropdownButton<String>(
            //                   value: qty,
            //                   onChanged: (String? newValue) {
            //                     setState(() {
            //                       qty = newValue!;
            //                     });
            //                   },
            //                   items: [
            //                     DropdownMenuItem(
            //                       value: "1",
            //                       child: Text(' 1'),
            //                     ),
            //                     DropdownMenuItem(
            //                       value: "2",
            //                       child: Text(' 2'),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //             ElevatedButton(
            //               onPressed: () {
            //                 Navigator.push(context, MaterialPageRoute(builder: (context)=>bag(amount: ,)));
            //               },
            //               child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
            //             )
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // );
      //     },
      //   ),
      // ),
//     );
//   }
// }

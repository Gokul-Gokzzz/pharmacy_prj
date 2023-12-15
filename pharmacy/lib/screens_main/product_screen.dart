// import 'package:flutter/material.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';
// import 'package:health/tab.dart/shopping_screen.dart';

// class Product extends StatefulWidget {
//   const Product({Key? key}) : super(key: key);

//   @override
//   State<Product> createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
//   List<String> name = [
//     'Azithromycin',
//     'Rabiprosol',
//     'Neopan',
//     'Moxclave',
//     'Diclofianac',
//     'Livogen'
//   ];
//   List<String> price = ['60', '30', '10', '100', '25', '120'];
//   List<String> image = [
//     'assets/azithromycin-500-tablet.avif',
//     'assets/DRABE.jpg',
//     'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
//     'assets/moxclave.jpg',
//     'assets/diclofian.png',
//     'assets/livogen.png'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.blue,
//                 Colors.blueGrey,
//               ],
//             ),
//           ),
//         ),
//         title: const Text('Product'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                   builder: (context) => CartScreen()));
//             },
//             icon: const Icon(Icons.shopping_cart_checkout_outlined),
//           )
//         ],
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/p'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView.builder(
//           itemBuilder: (ctx, index) {
//             return Padding(
//               padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
//               child: Card(
//                 color: Colors.transparent,
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   title: Text(name[index]),
//                   subtitle: Text(price[index]),
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage(image[index]),
//                   ),
//                   trailing: ElevatedButton(
//                     onPressed: () {
//                        CartList cartItem = CartList(
//                         count: index,
//                         data: name[index],
//                         amount: price[index],
//                         select: index,
//                         image: image[index],
//                       );
//                       addCart(cartItem);
        

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Item added to cart'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                     child: const Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
//                   ),
//                 ),
//               ),
//             );
//           },
//           itemCount: name.length,
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';
// import 'package:health/tab.dart/shopping_screen.dart';

// class Product extends StatefulWidget {
//   const Product({Key? key}) : super(key: key);

//   @override
//   State<Product> createState() => _ProductState();
// }
// bool isClicked=false;
// class _ProductState extends State<Product> {
//   List<String> name = [
//     'Azithromycin',
//     'Rabiprosol',
//     'Neopan',
//     'Moxclave',
//     'Diclofianac',
//     'Livogen'
//   ];
//   List<String> price = ['60', '30', '10', '100', '25', '120'];
//   List<String> image = [
//     'assets/azithromycin-500-tablet.avif',
//     'assets/DRABE.jpg',
//     'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
//     'assets/moxclave.jpg',
//     'assets/diclofian.png',
//     'assets/livogen.png'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Colors.blue,
//                 Colors.blueGrey,
//               ],
//             ),
//           ),
//         ),
//         title: const Text('Product'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => CartScreen()),
//               );
//             },
//             icon: const Icon(Icons.shopping_cart_checkout_outlined),
//           )
//         ],
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/bg4.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView.builder(
//           itemBuilder: (ctx, index) {
//             return Padding(
//               padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
//               child: Card(
//                 color: Colors.transparent,
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   title: Text(name[index]),
//                   subtitle: Text(price[index]),
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage(image[index]),
//                   ),
//                   trailing: ElevatedButton(
//                     style: ButtonStyle(
//                       overlayColor:MaterialStatePropertyAll(Colors.amber)
//                     ),
//                     onPressed: () {
//                       if(isClicked==true){
//                         CartList cartItem = CartList(
//                         count: index,
//                         data: name[index],
//                         amount: price[index],
//                         select: index,
//                         image: image[index], isAddedToCart: true,
//                       );
//                       addCart(cartItem);
                      
//                       }

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text('Item added to cart'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                       Navigator.of(context).push(
//                         MaterialPageRoute(builder: (context) => CartScreen(isClicked: isClicked,amount: price,image: image,name: name,)),
//                       );
//                     },
//                     child: const Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
//                   ),
//                 ),
//               ),
//             );
//           },
//           itemCount: name.length,
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';
// import 'package:health/tab.dart/shopping_screen.dart';

// class Product extends StatefulWidget {
//   const Product({Key? key}) : super(key: key);

//   @override
//   _ProductState createState() => _ProductState();
// }

// class _ProductState extends State<Product> {
//   final List<String> name = ['Azithromycin', 'Rabiprosol', 'Neopan', 'Moxclave', 'Diclofianac', 'Livogen'];
//   final List<String> price = ['60', '30', '10', '100', '25', '120'];
//   final List<String> image = [
//     'assets/azithromycin-500-tablet.avif',
//     'assets/DRABE.jpg',
//     'assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg',
//     'assets/moxclave.jpg',
//     'assets/diclofian.png',
//     'assets/livogen.png'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product'),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => CartScreen()),
//               );
//             },
//             icon: Icon(Icons.shopping_cart_checkout_outlined),
//           )
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/bg4.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView.builder(
//           itemBuilder: (ctx, index) {
//             return Padding(
//               padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
//               child: Card(
//                 color: Colors.transparent,
//                 elevation: 10,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: ListTile(
//                   title: Text(name[index]),
//                   subtitle: Text(price[index]),
//                   leading: CircleAvatar(
//                     backgroundImage: AssetImage(image[index]),
//                   ),
//                   trailing: ElevatedButton(
//                     style: ButtonStyle(
//                       overlayColor: MaterialStateProperty.all(Colors.amber),
//                     ),
//                     onPressed: () {
//                       CartList cartItem = CartList(
//                         data: name[index],
//                         amount: price[index],
//                         select: index,
//                         image: image[index],
//                         isAddedToCart: true,
//                       );
//                       addCart(cartItem);

//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text('Item added to cart'),
//                           duration: Duration(seconds: 2),
//                         ),
//                       );
//                     },
//                     child: const Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭'),
//                   ),
//                 ),
//               ),
//             );
//           },
//           itemCount: name.length,
//         ),
//       ),
//     );
//   }
// }


// product_screen.dart
import 'package:flutter/material.dart';
// import 'package:health/functions/function_cart.dart';
// import 'package:health/model/model_cart.dart';
import 'package:health/tab.dart/shopping_screen.dart';
// import 'package:health/tab.dart/class.dart'; // Make sure to replace this with the correct import path
import 'package:hive/hive.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}


class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Product 1', price: 20.0),
    Product(name: 'Product 2', price: 30.0),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
            },
           icon: Icon(Icons.shopping_bag_outlined)
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
              onPressed: () {
                addCartItem(product, quantity);
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

void addCartItem(Product product, int quantity) async {
  final cartBox = await Hive.openBox<CartItem>('cart_db');
  final cartItem = CartItem(product: product, quantity: quantity);
  cartBox.add(cartItem);
}


}








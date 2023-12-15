
import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/functions/functions_product.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/model/model_product.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Column(
        children: [
          Text('fcdfcd'),
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
}






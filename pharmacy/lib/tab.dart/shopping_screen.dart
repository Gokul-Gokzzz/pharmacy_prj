import 'dart:io';
import 'package:flutter/material.dart';
import 'package:health/functions/function_cart.dart';
import 'package:health/model/model_cart.dart';

class QuantityPickerButton extends StatefulWidget {
  final int value;
  final Function(int) onIncrease;
  final Function(int) onDecrease;

  const QuantityPickerButton({
    required this.value,
    required this.onIncrease,
    required this.onDecrease,
    Key? key,
  }) : super(key: key);

  @override
  State<QuantityPickerButton> createState() => _QuantityPickerButtonState();
}

class _QuantityPickerButtonState extends State<QuantityPickerButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            widget.onDecrease(widget.value);
          },
          icon: const Icon(Icons.remove),
        ),
        Text(
          widget.value.toString(),
          style: const TextStyle(fontSize: 16),
        ),
        IconButton(
          onPressed: () {
            widget.onIncrease(widget.value);
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class CartScreen extends StatefulWidget {
  final CartList? selectedItem;

  CartScreen({
    Key? key,
    this.selectedItem,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double totalCost = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Cart",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          flexibleSpace: Container(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        body: Expanded(
          child: ValueListenableBuilder(
            valueListenable: cartListNotifier,
            builder: (context, value, child) {
              // totalCost = calculateTotalCost(cartitems);
          
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartitems.length,
                      itemBuilder: (context, index) {
                        if (index < cartitems.length) {
                          final cartdata = cartitems[index];
                          int cost = int.tryParse(cartdata.amount) ?? 0;
          
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Card(
                                elevation: 3,
                                shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ListTile(
                                  tileColor: Colors.white,
                                  leading: Container(
                                    height: double.infinity,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: cartdata.image != null
                                          ? DecorationImage(
                                              image:
                                                  FileImage(File(cartdata.image)),
                                              fit: BoxFit.cover,
                                            )
                                          : null,
                                    ),
                                  ),
                                  title: Text(
                                    cartdata.data,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Row(
                                    children: [
                                      QuantityPickerButton(
                                        value: cartdata.select,
                                        onIncrease: (count) {
                                          setState(() {
                                            cartitems[index].count =
                                                (cartitems[index].count ?? 0) + 1;
                                          });
                                        },
                                        onDecrease: (count) {
                                          if ((cartitems[index].count ?? 0) > 1) {
                                            setState(() {
                                              cartitems[index].count =
                                                  (cartitems[index].count ?? 0) -
                                                      1;
                                            });
                                          }
                                        },
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.delete,
                                            color: Colors.red),
                                        onPressed: () {
                                          // showDeleteConfirmationDialog(
                                          //     index, context);
                                        },
                                      ),
                                      Text(
                                        '\$${cost * (cartitems[index].count ?? 0)}',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Bill",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "Total Cost",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\$${totalCost.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // showClearCartConfirmationDialog(context);
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Clear Cart'),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

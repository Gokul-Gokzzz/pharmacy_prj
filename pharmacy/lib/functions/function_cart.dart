// Functions.dart

import 'package:flutter/material.dart';
import 'package:health/tab.dart/class.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<CartList>> cartListNotifier = ValueNotifier([]);
List<CartList> cartitems = [];

Future<void> addCart(CartList value) async {
  final cartBox = await Hive.openBox<CartList>('cart_db');
  await cartBox.add(value);
  cartListNotifier.value.add(value);
  cartListNotifier.notifyListeners();
  getAlldata();
}

Future<void> getAlldata() async {
  final cartBox = await Hive.openBox<CartList>('cart_db');
  cartListNotifier.value.clear();
  cartListNotifier.value.addAll(cartBox.values);
  cartListNotifier.notifyListeners();
}

Future<void> deletecart(int index) async {
  final cartBox = await Hive.openBox<CartList>('cart_db');
  cartBox.deleteAt(index);
  getAlldata();
}

Future<void> editData(int index, CartList value) async {
  final cartBox = await Hive.openBox<CartList>('cart_db');
  cartBox.putAt(index, value);
  getAlldata();
}

double calculateTotalCost(List<CartList> cartItems) {
  double total = 0;
  for (var item in cartItems) {
    total += item.product.price * item.quantity;
  }
  return total;
}

void removeCartItem(CartList cartItem) {
  final box = Hive.box<CartList>('cart_db');
  // box.delete(cartItem.key); // Assuming CartItem has a key field
}

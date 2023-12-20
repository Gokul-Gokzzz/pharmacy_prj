import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:health/model/fixed_cart/model_cart.dart';

ValueNotifier<List<CartItem>> cartListNotifier =
    ValueNotifier<List<CartItem>>([]);

Future<void> addCartItem(CartItem cartItem) async {
  final box = await Hive.openBox<CartItem>('cart');
  await box.add(cartItem);
  await updateCartList();
}

Future<void> updateCartList() async {
  final box = await Hive.openBox<CartItem>('cart');
  cartListNotifier.value = box.values.toList();
}

Future<void> deleteCartItem(int index) async {
  final box = await Hive.openBox<CartItem>('cart');
  await box.deleteAt(index);
  await updateCartList();
}

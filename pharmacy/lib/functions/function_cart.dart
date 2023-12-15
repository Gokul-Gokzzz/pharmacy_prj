import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:health/model/model_cart.dart';

ValueNotifier<List<CartItem>> CartListNotifier =
    ValueNotifier<List<CartItem>>([]);

Future<void> addCartItem(CartItem cartItem) async {
  final box = await Hive.openBox<CartItem>('cart');
  await box.add(cartItem);
  await updateCartList();
}

Future<void> updateCartList() async {
  final box = await Hive.openBox<CartItem>('cart');
  CartListNotifier.value = box.values.toList();
}

Future<void> deleteCartItem(int index) async {
  final box = await Hive.openBox<CartItem>('cart');
  await box.deleteAt(index);
  await updateCartList();
}

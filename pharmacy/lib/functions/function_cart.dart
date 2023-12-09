import 'package:flutter/material.dart';
import 'package:health/model/model_cart.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<CartList>> cartListNotifier =ValueNotifier([]);
 Future<void> addCart(CartList value)async{
   final cartDB = await Hive.openBox<CartList>('cart_db');
   
   await cartDB.add(value);
   
   cartListNotifier.value.add(value);
   cartListNotifier.notifyListeners();
 }
   Future<void> getAlldata()async{
    final cartDB = await Hive.openBox<CartList>('expense_db');
    cartListNotifier.value.clear();
    cartListNotifier.value.addAll(cartDB.values);
   
    cartListNotifier.notifyListeners();
   }
    
    Future<void> deletecart(int index) async {
  final cartDB = await Hive.openBox<CartList>('cart_db');
  cartDB.deleteAt(index);
  getAlldata();
 }

Future<void> editData(index,CartList value ) async {
  final CartDB = await Hive.openBox<CartList>('cart_db');
  cartListNotifier.value.clear();
  cartListNotifier.value.addAll(CartDB.values);
  cartListNotifier.notifyListeners();
  CartDB.putAt(index, value);
  getAlldata();
}
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:health/model/model_product.dart';

ValueNotifier<List<Product>> ProductListNotifier =
    ValueNotifier<List<Product>>([]);

Future<void> addProduct(Product product) async {
  final box = await Hive.openBox<Product>('products');
  await box.add(product);
  await updateProductList();
}

Future<void> updateProductList() async {
  final box = await Hive.openBox<Product>('products');
  ProductListNotifier.value = box.values.toList();
}

Future<void> deleteProduct(int index) async {
  final box = await Hive.openBox<Product>('products');
  await box.deleteAt(index);
  await updateProductList();
}

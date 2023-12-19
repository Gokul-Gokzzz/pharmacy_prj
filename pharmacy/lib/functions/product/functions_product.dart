import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:health/model/fixed_product/model_product.dart';

ValueNotifier<List<Product>> productListNotifier =
    ValueNotifier<List<Product>>([]);

Future<void> addProduct(Product product) async {
  final box = await Hive.openBox<Product>('products');
  await box.add(product);
  await updateProductList();
}

Future<void> updateProductList() async {
  final box = await Hive.openBox<Product>('products');
  productListNotifier.value = box.values.toList();
}

Future<void> deleteProduct(int index) async {
  final box = await Hive.openBox<Product>('products');
  await box.deleteAt(index);
  await updateProductList();
}

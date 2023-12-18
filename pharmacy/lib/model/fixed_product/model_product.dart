import 'package:hive/hive.dart';

part 'model_product.g.dart';

@HiveType(typeId: 3)
class Product {
  @HiveField(0)
  int? index;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final double price;

  Product({required this.name, required this.price, this.index});
}

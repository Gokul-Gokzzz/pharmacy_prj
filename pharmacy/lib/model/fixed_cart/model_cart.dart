import 'package:hive/hive.dart';

part 'model_cart.g.dart';

@HiveType(typeId: 2)
class CartItem {
  @HiveField(0)
  int? index;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final double price;

  CartItem({required this.name, required this.price, this.index});
}

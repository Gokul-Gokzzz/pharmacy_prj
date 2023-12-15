import 'package:hive/hive.dart';

part 'model_cart.g.dart';

@HiveType(typeId: 2)
class CartList {
  @HiveField(0)
  int? index;

  @HiveField(1)
  final String data;

  @HiveField(2)
  final String amount;

  @HiveField(3)
  final int select;

  @HiveField(4)
  final String image;

  @HiveField(5)
  late final int? count;

  // @HiveField(6)
  // bool isAddedToCart;

  CartList({
    required this.data,
    required this.amount,
    required this.select,
    // required this.isAddedToCart,
    this.index,
    required this.image,
    this.count,
  });
}

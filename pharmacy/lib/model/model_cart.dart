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
  final dynamic image;

  @HiveField(5)
  late final int? count;

  CartList({
    required this.data,
    required this.amount,
    required this.select,
    this.index,
    this.image,
    this.count,
  });
}

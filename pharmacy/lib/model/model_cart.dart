import 'package:hive/hive.dart';
part 'model_cart.g.dart';

@HiveType(typeId: 2)

class CartList{

@HiveField(0)
 int? index;

@HiveField(1)
final String data ;

@HiveField(2)
final String amount;

@HiveField(3)
final String select;


@HiveField(4)
final String? image;

CartList({required this.data, required this.amount, required this.select,this.index,this.image});
}
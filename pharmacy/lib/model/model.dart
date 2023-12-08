import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 1)

class Model{

@HiveField(0)
 int? index;

@HiveField(1)
final String name ;

@HiveField(2)
final String address;

@HiveField(3)
final String Medicines;

@HiveField(4)
final String age;

@HiveField(5)
final String? image;

Model({required this.name, required this.address, required this.Medicines, required this.age,this.index,this.image});
}



import 'package:health/model/mannual/model.dart';
import 'package:hive/hive.dart';

// ValueNotifier<List<Model>> medNotifier = ValueNotifier([]);

class MedicalService {
 add(Model value) async {
  final medicalDb = await Hive.openBox<Model>("medical_db");
  await medicalDb.add(value);
  
  // medNotifier.value.add(value);
  // medNotifier.notifyListeners();      
}



getall() async {
  final medicalDb = await Hive.openBox<Model>('medical_db');
  return medicalDb.values.toList();
  // medNotifier.value.clear();
  // medNotifier.value.addAll(medicalDb.values);
  // medNotifier.notifyListeners();
}
edit(index, Model value) async {
  final medicalDB = await Hive.openBox<Model>('medical_db');
  // medNotifier.value.clear();
  // medNotifier.value.addAll(medicalDB.values);
  // medNotifier.notifyListeners();
  medicalDB.putAt(index, value);
  // getall();
}

 delete(int index) async {
  final medicalDB = await Hive.openBox<Model>('medical_db');
  await medicalDB.deleteAt(index);
  // medNotifier.notifyListeners();
  // getall();
}
}
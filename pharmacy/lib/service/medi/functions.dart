import 'package:health/model/mannual/model.dart';
import 'package:hive/hive.dart';

class MedicalServiceDb {
  addMedical(Model value) async {
    final medicalDb = await Hive.openBox<Model>("medical_db");
    await medicalDb.add(value);
  }

  getallMedical() async {
    final medicalDb = await Hive.openBox<Model>('medical_db');
    return medicalDb.values.toList();
  }

  editMedical(index, Model value) async {
    final medicalDB = await Hive.openBox<Model>('medical_db');
    medicalDB.putAt(index, value);
  }

  deleteMedical(int index) async {
    final medicalDB = await Hive.openBox<Model>('medical_db');
    await medicalDB.deleteAt(index);
  }
}

import 'package:flutter/material.dart';
import 'package:health/model/mannual/model.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<Model>> medNotifier = ValueNotifier([]);

Future<void> add(Model value) async {
  final medicalDb = await Hive.openBox<Model>("medical_db");
  await medicalDb.add(value);
  medNotifier.value.add(value);
  medNotifier.notifyListeners();      
}



Future <void> medi() async {
  final medicalDb = await Hive.openBox<Model>('medical_db');
  medNotifier.value.clear();
  medNotifier.value.addAll(medicalDb.values);
  medNotifier.notifyListeners();
}

Future<void> edit(index, Model value) async {
  final medicalDB = await Hive.openBox<Model>('medical_db');
  medNotifier.value.clear();
  medNotifier.value.addAll(medicalDB.values);
  medNotifier.notifyListeners();
  medicalDB.putAt(index, value);
  medi();
}

Future<void> delete(int index) async {
  final medicalDB = await Hive.openBox<Model>('medical_db');
  await medicalDB.deleteAt(index);
  medNotifier.notifyListeners();
  medi();
}
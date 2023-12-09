import 'package:flutter/material.dart';
import 'package:health/model/model.dart';
import 'package:health/model/model_cart.dart';
import 'package:hive/hive.dart';

ValueNotifier<List<Model>> MedNotifier = ValueNotifier([]);

Future<void> add(Model value) async {
  final MedicalDB = await Hive.openBox<Model>("medical_db");
  await MedicalDB.add(value);
  MedNotifier.value.add(value);
  MedNotifier.notifyListeners();      
}



Future <void> Medi() async {
  final MedicalDB = await Hive.openBox<Model>('medical_db');
  MedNotifier.value.clear();
  MedNotifier.value.addAll(MedicalDB.values);
  MedNotifier.notifyListeners();
}

Future<void> edit(index, Model value) async {
  final MedicalDB = await Hive.openBox<Model>('medical_db');
  MedNotifier.value.clear();
  MedNotifier.value.addAll(MedicalDB.values);
  MedNotifier.notifyListeners();
  MedicalDB.putAt(index, value);
  Medi();
}

Future<void> delete(int index) async {
  final MedicalDB = await Hive.openBox<Model>('medical_db');
  await MedicalDB.deleteAt(index);
  MedNotifier.notifyListeners();
  Medi();
}
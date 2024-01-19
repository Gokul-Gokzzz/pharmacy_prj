import 'package:flutter/material.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/service/medi/functions.dart';

class DbProvider extends ChangeNotifier {
  final MedicalServiceDb _medicalservice = MedicalServiceDb();
  List<Model> medicallist = [];
  List<Model> filtered = [];

  Future<void> addMedicine(value) async {
    _medicalservice.addMedical(value);
    await getMedicine();
  }

  Future<void> getMedicine() async {
    medicallist = await _medicalservice.getallMedical();
    notifyListeners();
  }

  Future<void> deleteMedicide(int index) async {
    await _medicalservice.deleteMedical(index);
    await getMedicine();
  }

  Future<void> editMedicine(Model value, index) async {
    await _medicalservice.editMedical(index, value);
    notifyListeners();
    await getMedicine();
  }

  void filteredSearch(List<Model> value) async {
    filtered = value;
    notifyListeners();
  }
}

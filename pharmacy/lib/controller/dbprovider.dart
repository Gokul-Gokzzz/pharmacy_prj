import 'package:flutter/material.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/service/medi/functions.dart';

class DbProvider extends ChangeNotifier{
  final MedicalService _medicalservice = MedicalService();
  List <Model> medicallist = [];
  List <Model> filtered = [];


  Future <void> add(value)async{
    _medicalservice.add(value);
    await get();
   
  } 

  Future <void> get()async{
    medicallist = await _medicalservice.getall();
    notifyListeners();
  } 

  Future <void> delete(int index)async{
   await _medicalservice.delete(index);
   await get();
  }


  Future <void> edit(Model value, index)async{
   await _medicalservice.edit(index, value);
   notifyListeners();
   await get();
  }


  void filteredSearch (List <Model> value) async {
    filtered = value;
    notifyListeners();
  }
}
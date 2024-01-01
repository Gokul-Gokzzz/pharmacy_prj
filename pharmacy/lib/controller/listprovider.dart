import 'package:flutter/material.dart';
import 'package:health/service/medi/functions.dart';
import 'package:health/model/mannual/model.dart';

class ListProvider extends ChangeNotifier{

  String search = '';
  List<Model> searchedlist = [];
  List<Model> mdList = [];
  void searchResult() {
   
      searchedlist = medNotifier.value
          .where((model) =>
              model.name.toLowerCase().contains(search.toLowerCase()))
          .toList();
   
  }

}
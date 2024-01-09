import 'package:flutter/material.dart';
import 'package:health/controller/dbprovider.dart';
import 'package:health/model/mannual/model.dart';
import 'package:provider/provider.dart';

class SearchProvider extends ChangeNotifier{


  String search = "";
  List<Model> searchList = [];
  
  void searchResult(BuildContext context) {
    final dbProvider = Provider.of<DbProvider>(context , listen: false);
    final filteredList = dbProvider.medicallist
        .where((model) => model.name.toLowerCase().contains(search.toLowerCase()))
             .toList();
    dbProvider.filteredSearch(filteredList);
  }

}
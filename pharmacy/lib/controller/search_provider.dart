import 'package:flutter/material.dart';
import 'package:health/controller/db_provider.dart';
import 'package:health/model/model.dart';
import 'package:provider/provider.dart';

class SearchProvider extends ChangeNotifier {
  String search = "";
  List<Model> searchList = [];

  void searchResult(BuildContext context) {
    final dbProvider = Provider.of<DbProvider>(context, listen: false);
    final filteredList = dbProvider.medicalList
        .where(
            (model) => model.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    dbProvider.filteredSearch(filteredList);
  }
}

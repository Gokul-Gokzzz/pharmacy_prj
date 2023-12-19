import 'dart:io';

import 'package:flutter/material.dart';
import 'package:health/functions/medi/functions.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/edit.dart';
import 'package:health/views_main/view.dart';

class ListOfMedicines extends StatefulWidget {
  const ListOfMedicines({super.key});

  @override
  State<ListOfMedicines> createState() => _ListOfMedicinesState();
}

class _ListOfMedicinesState extends State<ListOfMedicines> {
  // --------------------------------
  String _search = '';
  List<Model> searchedlist = [];
  List<Model> mdList = [];
  // ---------------------------------------------
  // Medic() async {
  //   final medica = await Medi ();
  //   MedNotifier.value = medica;
  // }

  @override
  void initState() {
    super.initState();
    Medi();
  }

  void searchResult() {
    setState(() {
      searchedlist = MedNotifier.value
          .where((Model) =>
              Model.name.toLowerCase().contains(_search.toLowerCase()))
          .toList();
    });
  }

  // --------------------------------------

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.blue,
                  Colors.blueGrey,
                ])),
          ),
          title: const Center(
            child: Text('Lists'),
          ),
          backgroundColor: Colors.red,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/list.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search',
                    contentPadding: const EdgeInsets.all(10),
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(75),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Colors.lightBlue,
                        width: 2,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    // ----------------------
                    setState(() {
                      _search = value;
                    });
                    searchResult();

                    // ---------------------
                  },
                ),
              ),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: MedNotifier,
                  builder: (BuildContext ctx, List<Model> MdList,
                   Widget? child) {
                    final display =
                        searchedlist.isNotEmpty ? searchedlist : MdList;
                    return ListView.separated(
                      itemBuilder: (ctx, index) {
                        final data = display[index];
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: Card(
                            color: Colors.transparent,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ViewScreen(
                                      name: data.name,
                                      address: data.address,
                                      medicine: data.medicines,
                                      age: data.age,
                                      imagePath: data.image ?? "",
                                    ),
                                  ),
                                );
                              },
                              textColor: Colors.white,
                              title: Text(data.name),
                              subtitle: Text(data.age),
                              leading: CircleAvatar(
                                  backgroundImage: data.image != null
                                      ? FileImage(File(data.image!))
                                      : const AssetImage(
                                              "assets/photo-1562243061-204550d8a2c9.png")
                                          as ImageProvider),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => Edit(
                                              index: index,
                                              name: data.name,
                                              age: data.address,
                                              medicines: data.medicines,
                                              address: data.age,
                                              imagePath: data.image),
                                        ));
                                      },
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      )),
                                  IconButton(
                                      onPressed: () {
                                        delete(index);
                                      },
                                      icon: const Icon(Icons.delete,
                                          color:
                                              Color.fromARGB(255, 255, 17, 0))),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return const Divider();
                      },
                      itemCount: display.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
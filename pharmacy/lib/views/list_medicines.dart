import 'dart:io';
import 'package:flutter/material.dart';
import 'package:health/controller/db_provider.dart';
import 'package:health/controller/search_provider.dart';
import 'package:health/views/edit.dart';
import 'package:health/views/view.dart';
import 'package:provider/provider.dart';

class ListOfMedicines extends StatelessWidget {
  const ListOfMedicines({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);
    Provider.of<DbProvider>(context, listen: false).getMedicine();
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: '𝕾𝖊𝖆𝖗𝖈𝖍 ',
                  contentPadding: const EdgeInsets.all(10),
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
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
                  provider.search = value;

                  provider.searchResult(context);
                },
              ),
            ),
            Expanded(
              child: Consumer<DbProvider>(
                builder: (BuildContext ctx, dbvalue, child) {
                  final list = dbvalue.filtered.isNotEmpty
                      ? dbvalue.filtered
                      : dbvalue.medicalList;
                  return ListView.separated(
                    itemBuilder: (ctx, index) {
                      final data = list[index];
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
                                      Provider.of<DbProvider>(context,
                                              listen: false)
                                          .deleteMedicide(index);
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
                    itemCount: list.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

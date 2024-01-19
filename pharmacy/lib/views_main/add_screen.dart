// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/controller/addprovider.dart';
import 'package:health/controller/dbprovider.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/list_medicines.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addscreenprovider = Provider.of<AddProvider>(context);
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [Colors.blue, Colors.blueGrey])),
          ),
          backgroundColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ListOfMedicines()));
                },
                icon: const Icon(
                  Icons.list,
                  color: Colors.black,
                )),
          ]),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: addscreenprovider.formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Container(
                    width: 180,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                      image: addscreenprovider.selectedImage != null
                          ? DecorationImage(
                              image:
                                  FileImage(addscreenprovider.selectedImage!),
                              fit: BoxFit.cover,
                            )
                          : const DecorationImage(
                              image: AssetImage(
                                  "assets/photo-1562243061-204550d8a2c9.png"),
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    addscreenprovider.pickImage(ImageSource.gallery);
                  },
                  icon: const Icon(Icons.image),
                  label: const Text('GALLERY'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    addscreenprovider.pickImage(ImageSource.camera);
                  },
                  icon: const Icon(Icons.image),
                  label: const Text('CAMERA'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                            RegExp(r'[a-z,A-Z," "]'))
                      ],
                      keyboardType: TextInputType.name,
                      controller: addscreenprovider.nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Name",
                        contentPadding: const EdgeInsets.all(10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                          borderSide: const BorderSide(
                              color: Colors.lightBlue, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    keyboardType: TextInputType.streetAddress,
                    controller: addscreenprovider.addressController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Address",
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: const BorderSide(
                          color: Colors.lightBlue,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Address  is required';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    controller: addscreenprovider.medicinesController,
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Medicines",
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 2),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Medicine is required';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    keyboardType: TextInputType.number,
                    controller: addscreenprovider.ageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Age",
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide:
                            const BorderSide(color: Colors.lightBlue, width: 2),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Age is required';
                      }
                      int? age = int.tryParse(value);
                      if (age == null || age <= 0 || age > 150) {
                        return "Please enter a valid age";
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    if (addscreenprovider.formKey.currentState!.validate()) {
                      onClick(context);
                    }
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onClick(BuildContext context) async {
    final addbuttonprovider = Provider.of<AddProvider>(context, listen: false);
    final name = addbuttonprovider.nameController.text.trim();
    final address = addbuttonprovider.addressController.text.trim();
    final medicine = addbuttonprovider.medicinesController.text.trim();
    final age = addbuttonprovider.ageController.text.trim();
    if (name.isEmpty || address.isEmpty || medicine.isEmpty || age.isEmpty) {
      return;
    }
    addbuttonprovider.nameController.clear();
    addbuttonprovider.addressController.clear();
    addbuttonprovider.medicinesController.clear();
    addbuttonprovider.ageController.clear();

    final medicals = Model(
        name: name,
        age: age,
        medicines: medicine,
        address: address,
        image: addbuttonprovider.selectedImage!.path);
    Provider.of<DbProvider>(context, listen: false).addMedicine(medicals);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ListOfMedicines()));
  }
}

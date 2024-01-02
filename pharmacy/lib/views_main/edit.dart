// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:health/controller/dbprovider.dart';
import 'package:health/controller/editprovider.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/list_medicines.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Edit extends StatefulWidget {
  var name;
  var address;
  var medicines;
  var age;
  dynamic index;
  dynamic imagePath;

  Edit({super.key, 
    required this.index,
    required this.name,
    required this.address,
    required this.medicines,
    required this.age,
    required this.imagePath,
  });

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {




  @override
  void initState() {
    final prd = Provider.of<EditProvider>(context, listen: false);
    super.initState();
    prd.nameController.text = widget.name;
     prd.ageController.text = widget.address;
     prd.medicinesController.text = widget.medicines;
    prd.addressController.text = widget.age;
    prd.selectedImage = widget.imagePath != '' ? File(widget.imagePath) : null;
  }

  @override
  Widget build(BuildContext context) {
    final prd =Provider.of<EditProvider>(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 58),
      appBar: AppBar(
         flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue,
                     Colors.blueGrey,
                ]
                )
            ),
          ),
        title: const Text("𝕰𝖉𝖎𝖙"),
        backgroundColor: Colors.black,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ListOfMedicines()));
              },
              icon: const Icon(Icons.list,color: Colors.black,)),
        ],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.blueGrey,
                backgroundImage:  prd.selectedImage != null
                    ? FileImage( prd.selectedImage!)
                    : const AssetImage("assetsgk.jpeg") as ImageProvider,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                     prd.pickImage(ImageSource.gallery);
                  },
                  icon: const Icon(Icons.image),
                  label: const Text("GALLERY")),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                     prd.pickImage(ImageSource.camera);
                  },
                  icon: const Icon(Icons.camera_alt),
                  label: const Text("CAMERA")),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    TextField(
                      controller:  prd.nameController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: "Name",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller:  prd.addressController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: 'Address',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller:  prd.medicinesController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: 'Medicine',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      maxLength: 10,
                      controller:  prd.ageController,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(),
                        hintText: 'Age',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue),
                        onPressed: ()async {
                         await updateall();
                        },
                        icon: const Icon(Icons.done),
                        label: const Text("Update")),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  // Future<void> updateall() async {
  //   final prd = Provider.of<EditProvider>(context, listen: false);
  //   final name =   prd.nameController.text.trim();
  //   final age =  prd.addressController.text.trim();
  //   final medicine =  prd.medicinesController.text.trim();
  //   final address =  prd.ageController.text.trim();
  //   final image =  prd.selectedImage!.path;

  //   if (name.isEmpty ||
  //       address.isEmpty ||
  //       medicine.isEmpty ||
  //       age.isEmpty ||
  //       image.isEmpty) {
  //     return;
  //   } else {
  //     final update = Model(
  //         name: name, address: address, medicines: medicine, age: age, image: image);

  //    Provider.of<DbProvider>(context).edit(widget.index, update);
  //     Navigator.of(context).push(
  //         MaterialPageRoute(builder: (context) => const ListOfMedicines()));
  //   }
  // }

  Future<void>updateall()async{
       final prd = Provider.of<EditProvider>(context, listen: false);
    final medical =Model(index: widget.index,
      name: prd.nameController.text,
      address:prd.addressController.text,
      medicines: prd.medicinesController.text,
      age: prd.ageController.text,
      image: prd.selectedImage!.path 
       );

    await Provider.of<DbProvider>(context, listen: false)
        .edit(medical, medical.index);
        Navigator.pop(context);
  }     



}

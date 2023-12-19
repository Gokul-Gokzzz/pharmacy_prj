import 'dart:io';

import 'package:flutter/material.dart';
import 'package:health/functions/medi/functions.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/list_medicines.dart';

import 'package:image_picker/image_picker.dart';

class Edit extends StatefulWidget {
  var name;
  var address;
  var medicines;
  var age;
  int index;
  dynamic imagePath;

  Edit({
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
  TextEditingController _nameController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _medicinesController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  File? _selectedImage;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _ageController = TextEditingController(text: widget.address);
    _medicinesController = TextEditingController(text: widget.medicines);
    _addressController = TextEditingController(text: widget.age);
    _selectedImage = widget.imagePath != '' ? File(widget.imagePath) : null;
  }

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/edit.jpg'),fit: BoxFit.cover)
        ),
        child: ListView(
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
                  backgroundImage: _selectedImage != null
                      ? FileImage(_selectedImage!)
                      : const AssetImage("assetsgk.jpeg") as ImageProvider,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.image),
                    label: const Text("GALLERY")),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      _pickImage(ImageSource.camera);
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
                        controller: _nameController,
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
                        controller: _addressController,
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
                        controller: _medicinesController,
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
                        controller: _ageController,
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
                          onPressed: () {
                            updateall();
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
      ),
    ));
  }

  Future<void> updateall() async {
    final name = _nameController.text.trim();
    final age = _addressController.text.trim();
    final medicine = _medicinesController.text.trim();
    final address = _ageController.text.trim();
    final image = _selectedImage!.path;

    if (name.isEmpty ||
        address.isEmpty ||
        medicine.isEmpty ||
        age.isEmpty ||
        image.isEmpty) {
      return;
    } else {
      final update = Model(
          name: name, address: address, medicines: medicine, age: age, image: image);

      edit(widget.index, update);
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ListOfMedicines()));
    }
  }

  Future _pickImage(ImageSource source) async {
    final returnImage =
        await ImagePicker().pickImage(source: source);

    if (returnImage == null) {
      return;
    }

    setState(() {
      _selectedImage = File(returnImage.path);
    });
  }

}

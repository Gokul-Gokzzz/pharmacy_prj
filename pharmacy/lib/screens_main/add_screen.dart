import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health/screens_main/list_medicines.dart';
import 'package:image_picker/image_picker.dart';
import 'package:health/functions/functions.dart';
import 'package:health/model/model.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _medicinesController = TextEditingController();
  final _ageController = TextEditingController();
  File? _selectedImage;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(0))),
          actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => List_Of_Medicines()));
                },
                icon: Icon(Icons.list,color: Colors.black,)),
          ]
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/add.png'
              ),
            fit: BoxFit.cover
            ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.black,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!)
                        : const AssetImage(
                            "assets/photo-1562243061-204550d8a2c9.png") as ImageProvider,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _pickImage(ImageSource.gallery);
                  },
                  icon: const Icon(Icons.image),
                  label: const Text('GALLERY'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    _pickImage(ImageSource.camera);
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
                      controller: _nameController,
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
                          borderSide:
                              const BorderSide(color: Colors.lightBlue, width: 2),
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
                    controller: _addressController,
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
                    controller: _medicinesController,
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
                    controller: _ageController,
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
                const SizedBox(height: 10,),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      onAdd();
                    }
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onAdd() async {
    final _name = _nameController.text.trim();
    final _address = _addressController.text.trim();
    final _medicine = _medicinesController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _address.isEmpty || _medicine.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_address $_medicine $_age');

    final _student = Model(
        name: _name,
        age: _age,
        Medicines: _medicine,
        address: _address,
        image: _selectedImage!.path);
    add(_student);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>List_Of_Medicines()));
  }

  Future<void> _pickImage(ImageSource source) async {
    final returnImage = await ImagePicker().pickImage(source: source);

    if (returnImage == null) {
      return;
    }

    setState(() {
      _selectedImage = File(returnImage.path);
    });
  }

  void _refreshScreen() {
    _nameController.clear();
    _addressController.clear();
    _medicinesController.clear();
    _ageController.clear();

    // --------------------------
    setState(() {
      _selectedImage = null;
    });
    // -----------------------------
  }


}
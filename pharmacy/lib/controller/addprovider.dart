import 'dart:io';

import 'package:flutter/material.dart';
import 'package:health/service/medi/functions.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/list_medicines.dart';
import 'package:image_picker/image_picker.dart';

class AddProvider extends ChangeNotifier{
   final nameController = TextEditingController();
  final addressController = TextEditingController();
  final medicinesController = TextEditingController();
  final ageController = TextEditingController();
   final formKey = GlobalKey<FormState>();
  File? selectedImage;

   
  Future<void> onAdd(BuildContext context) async {
    final name = nameController.text.trim();
    final address = addressController.text.trim();
    final medicine = medicinesController.text.trim();
    final age = ageController.text.trim();
    if (name.isEmpty || address.isEmpty || medicine.isEmpty || age.isEmpty) {
      return;
    }
    // print('$name $address $medicine $age');

    final medicals = Model(
        name: name,
        age: age,
        medicines: medicine,
        address: address,
        image: selectedImage!.path
        );
    add(medicals);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ListOfMedicines()));
  }

  
  Future<void> pickImage(ImageSource source) async {
    final returnImage = await ImagePicker().pickImage(source: source);

    if (returnImage == null) {
      return;
    }
      selectedImage = File(returnImage.path);
    
  }

}
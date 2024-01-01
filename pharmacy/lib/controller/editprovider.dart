import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProvider extends ChangeNotifier{
    TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController medicinesController = TextEditingController();
  TextEditingController ageController = TextEditingController();

    File? selectedImage;
   
    Future pickImage(ImageSource source) async {
    final returnImage =
        await ImagePicker().pickImage(source: source);

    if (returnImage == null) {
      return;
    }

   
      selectedImage = File(returnImage.path);
   
  }


  
}
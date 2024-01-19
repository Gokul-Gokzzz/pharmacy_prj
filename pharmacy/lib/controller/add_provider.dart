import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProvider extends ChangeNotifier {
  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final medicinesController = TextEditingController();
  final ageController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  File? selectedImage;

  Future<void> pickImage(ImageSource source) async {
    final returnImage = await ImagePicker().pickImage(source: source);

    if (returnImage == null) {
      return;
    }
    selectedImage = File(returnImage.path);
    notifyListeners();
  }
}

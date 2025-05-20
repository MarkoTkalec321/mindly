import 'package:flutter/material.dart';

class LoginPageModel {
  // Remove final keywords to allow reassignment
  TextEditingController? textController1;
  TextEditingController? textController2;
  FocusNode? textFieldFocusNode1;
  FocusNode? textFieldFocusNode2;
  bool passwordVisibility = false;
  
  final textController1Validator = ValidationModel();
  final textController2Validator = ValidationModel();

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textFieldFocusNode1?.dispose();
    textFieldFocusNode2?.dispose();
  }
}

class ValidationModel {
  String? Function(String?) asValidator(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return 'Field cannot be empty';
      }
      return null;
    };
  }
}
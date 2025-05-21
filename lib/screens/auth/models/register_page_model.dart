import 'package:flutter/material.dart';

class RegisterPageModel {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  
  FocusNode? textFieldFocusNode1;
  FocusNode? textFieldFocusNode2;
  FocusNode? textFieldFocusNode3;
  
  bool passwordVisibility = false;
  
  final textController1Validator = ValidationModel();
  final textController2Validator = ValidationModel();
  final textController3Validator = ValidationModel();

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textFieldFocusNode1?.dispose();
    textFieldFocusNode2?.dispose();
    textFieldFocusNode3?.dispose();
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
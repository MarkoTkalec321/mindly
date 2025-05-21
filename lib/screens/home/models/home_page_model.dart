import 'package:flutter/material.dart';

class HomePageModel {
  // Add createModel helper
  static HomePageModel createModel(BuildContext context, Function() param1) => HomePageModel();
  
  // No controllers needed since home page only has buttons
  // No focus nodes needed since no text input fields
  
  void dispose() {
    // Nothing to dispose since no controllers/focus nodes
  }
  
  void onLoginPressed(BuildContext context) {
    Navigator.pushNamed(context, '/loginPage');
  }
  
  void onRegisterPressed(BuildContext context) {
    Navigator.pushNamed(context, '/registerPage');
  }
}
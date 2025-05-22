import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

class ProfilePageModel {
  static String userName = 'John';
  static String profilePicture = 'assets/images/john.jpg';
  static bool isCustomImage = false;

  static void updateUserName(String newName) {
    userName = newName;
  }

  static void updateProfilePicture(String imagePath) {
    profilePicture = imagePath;
    isCustomImage = true;
  }

  static Widget getProfileImage() {
    if (isCustomImage) {
      if (kIsWeb) {
        // For web, use network image
        return Image.network(
          profilePicture,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'assets/images/john.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            );
          },
        );
      } else {
        // For mobile, use file image
        return Image.file(
          File(profilePicture),
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Image.asset(
              'assets/images/john.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            );
          },
        );
      }
    }
    // Default asset image
    return Image.asset(
      profilePicture,
      width: 150,
      height: 150,
      fit: BoxFit.cover,
    );
  }

  void dispose() {
    // Dispose of any resources if needed
  }
}
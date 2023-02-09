
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorUtils {

  static showErrorSnackbar({required String title, required String message}){
    Get.snackbar("Error", "Invalid Email",
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Error",
          style: TextStyle(color: Colors.red),
        ),
        messageText: const Text(
          "Your Email is not correct",
          style: TextStyle(color: Colors.red),
        ));
    return false;
  }
}
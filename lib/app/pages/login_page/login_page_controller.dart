import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  // Menambahkan formKey
  final formKey = GlobalKey<FormState>();

  final RxString email = ''.obs;
  final RxString password = ''.obs;

  void setEmail(String value) => email.value = value;
  void setPassword(String value) => password.value = value;

  void handleLogin() {
    if (formKey.currentState?.validate() ?? false) {
      // Logika untuk memeriksa email dan password, kemudian melakukan login
      print('Email: ${email.value}, Password: ${password.value}');
    }
  }
}

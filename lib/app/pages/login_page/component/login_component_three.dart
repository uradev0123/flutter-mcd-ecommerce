import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Get.offNamed("/");
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
          ),
          child: Text(
            'Login',
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 15),
        GestureDetector(
          onTap: () {
            Get.offNamed("signup");
          },
          child: Text(
            "Don't have an account? Sign In now.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
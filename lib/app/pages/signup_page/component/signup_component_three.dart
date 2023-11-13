import 'package:flutter/material.dart';

class signupPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/homePage');
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
            Navigator.pushReplacementNamed(context, '/SignupPage');
          },
          child: Text(
            "Don't have an account? Sign Up now.",
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
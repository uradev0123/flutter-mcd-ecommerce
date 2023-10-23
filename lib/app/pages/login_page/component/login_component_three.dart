import 'package:flutter/material.dart';

class LoginComponentThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
          },
          child: Text('Login'),
        ),
        SizedBox(height: 10.0),
        TextButton(
          onPressed: () {
          },
          child: Text(
            'Don’t have an account? Sign Up now.',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}

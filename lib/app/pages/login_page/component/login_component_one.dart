import 'package:flutter/material.dart';

class LoginComponentOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: width * 0.1),
      child: Column(
        children: [
          // Logo
          Container(
            width: width * 0.2,
            height: width * 0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/login_logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

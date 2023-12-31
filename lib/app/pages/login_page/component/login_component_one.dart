import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class loginPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/login_image.svg'),
          SizedBox(height: 2),
          Text(
            'Welcome Back!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}

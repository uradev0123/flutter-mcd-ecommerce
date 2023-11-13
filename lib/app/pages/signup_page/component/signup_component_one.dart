import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signupPage1 extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/signup_img.svg'),
          SizedBox(height: 2),
          Text(
            'Become a member!',
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
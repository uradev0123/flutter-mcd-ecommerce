import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/component/signup_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/component/signup_component_two.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/component/signup_component_three.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              signupPage1(),
              SignupPage2(),
              signupPage3()
            ],
          ),
        ),
      ),
    );
  }
}

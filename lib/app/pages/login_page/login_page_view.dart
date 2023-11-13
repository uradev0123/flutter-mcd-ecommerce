import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/component/login_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/component/login_component_three.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/component/login_component_two.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              loginPage1(),
              loginPage2(),
              loginPage3(),
            ],
          ),
        ),
      ),
    );
  }
}

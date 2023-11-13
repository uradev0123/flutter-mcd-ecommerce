import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/component/profile_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/component/profile_component_three.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/component/profile_component_two.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfilePage1(),
              SizedBox(height: 20),
              ProfilePage2(),
              ProfilePage3(),
            ],
          ),
        ),
      ),
    );
  }
}

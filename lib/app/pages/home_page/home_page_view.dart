import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_five.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_four.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_three.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_two.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/components/home_component_six.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeComponentOne(),
              HomeComponentTwo(),
              HomeComponentThree(),
              HomeComponentFour(),
              HomeComponentFive(),
              HomeComponentSix(),
            ],
          ),
        ),
      ),
    );
  }
}

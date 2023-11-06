import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/breakfast.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/widgets/card_product_home_page.dart';

class HomeComponentFive extends StatelessWidget {
  final BreakfastController breakfastController = Get.put(BreakfastController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Column(

    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:web_pancasila_aceh/app/mock_data/controller/recommended.dart';
import 'package:web_pancasila_aceh/app/pages/home_page/widgets/card_product_home_page.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HomeComponentFour extends StatelessWidget {
  final RecommendedController recommendedController = Get.put(RecommendedController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.05),

        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Text("You Might Want", style: ts16SemiboldBlack),
        ),

        SizedBox(height: height * 0.025),

        cardProductHomePage(context: context, controller: recommendedController.recommended),
      ],
    );
  }
}

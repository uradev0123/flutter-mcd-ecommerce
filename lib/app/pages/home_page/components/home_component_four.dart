import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/recommended.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/widgets/card_product_home_page.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class HomeComponentFour extends StatelessWidget {
  final RecommendedController recommendedController = Get.put(RecommendedController());
  final MenuPageController menuPageController = Get.put(MenuPageController());
  final HomePageController homePageController = Get.put(HomePageController());
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("You Might Want", style: ts16SemiboldBlack),
              InkWell(
                onTap: () {
                  Get.toNamed('/menu');
                  menuPageController.selectedCategoryIndex.value = 0;
                  homePageController.isRoutingFromHomePage.value = true;
                },
                  child: Text('See More', style: ts14MediumRed)
              ),
            ],
          ),
        ),

        SizedBox(height: height * 0.025),

        cardProductHomePage(context: context, controller: recommendedController.recommended),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/widgets/menu_circle_red.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class HomeComponentThree extends StatelessWidget {
  final MenuPageController menuPageController = Get.put(MenuPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Stack(
      children: [
        Container(
          color: primaryColor,
          height: height * 0.04,
        ),
        Container(
          width: width,
          height: height * 0.08,
          decoration: const ShapeDecoration(
            color: primaryColor,
            shape: OvalBorder(),
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                Get.toNamed('/menu');
                menuPageController.selectedCategoryIndex.value = 4;
              },
              child: menuCircleRed(
                context: context,
                pathImage: "dessert",
                textValue: "Dessert",
                isDown: false,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/menu');
                menuPageController.selectedCategoryIndex.value = 1;
              },
              child: menuCircleRed(
                context: context,
                pathImage: "burger",
                textValue: "Burger",
                isDown: true,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/menu');
                menuPageController.selectedCategoryIndex.value = 2;
              },
              child: menuCircleRed(
                context: context,
                pathImage: "chicken",
                textValue: "Chicken",
                isDown: true,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/menu');
                menuPageController.selectedCategoryIndex.value = 3;
              },
              child: menuCircleRed(
                context: context,
                pathImage: "drink",
                textValue: "Drink",
                isDown: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

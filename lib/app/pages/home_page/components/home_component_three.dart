import 'package:flutter/material.dart';
import 'package:web_pancasila_aceh/app/pages/home_page/widgets/menu_circle_red_down.dart';
import 'package:web_pancasila_aceh/app/pages/home_page/widgets/menu_circle_red.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HomeComponentThree extends StatelessWidget {
  const HomeComponentThree({Key? key}) : super(key: key);

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
          height: height * 0.08,
          decoration: const ShapeDecoration(
              color: primaryColor,
              shape: OvalBorder()
          ),
        ),
        Row(
          children: [
            menuCircleRed(context: context, pathImage: "dessert", textValue: "Dessert", isDown: false),
            menuCircleRed(context: context, pathImage: "burger", textValue: "Burger", isDown: true),
            menuCircleRed(context: context, pathImage: "chicken", textValue: "Chicken", isDown: true),
            menuCircleRed(context: context, pathImage: "drink", textValue: "Drink", isDown: false),
          ],
        ),
      ],
    );
  }
}

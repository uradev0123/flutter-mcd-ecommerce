import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/components/cart_component_four.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/components/cart_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/components/cart_component_three.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/components/cart_component_two.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class CartPageView extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    cartController.calculateSubTotalPrice();
    cartController.calculateTotalPrice();

    return Scaffold(
      backgroundColor: backgroundPageColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.09,
        title: Text('Cart', style: ts18SemiboldBlack),
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CartComponentOne(),
                  CartComponentTwo(),
                  CartComponentThree(),
                ],
              ),
            ),
          ),
          CartComponentFour(),
        ],
      ),
    );
  }
}

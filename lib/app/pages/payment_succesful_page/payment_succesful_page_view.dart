import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class PaymentSuccesfulPageView extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    cartController.calculateTotalPrice();

    String totalPrice = cartController.formattedTotalPrice.value;

    return Scaffold(
      backgroundColor: backgroundPageColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline, color: Color(0xFF4BD37B), size: 125),
                  SizedBox(height: height * 0.02),
                  Text('payment with a total of \n$totalPrice was successful', style: ts18MediumBlack, textAlign: TextAlign.center),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                margin: EdgeInsets.only(bottom: height * 0.05),
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed('/');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.025),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Back to Home',
                    style: ts16SemiboldBlack,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

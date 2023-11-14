import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class CartComponentThree extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    cartController.calculateSubTotalPrice();
    cartController.calculateTotalPrice();

    return Obx(() => Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: height * 0.02, bottom: height * 0.2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Color(0xFFD9D9D9)),
        ),
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ringkasan Pembayaran', style: ts16SemiboldBlack),
            SizedBox(height: height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: ts12MediumBlack),
                Text(cartController.formattedSubTotalPrice.value, style: ts12MediumBlack),
              ],
            ),
            SizedBox(height: height * 0.005),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ongkos Kirim', style: ts12MediumBlack),
                Text('Rp 16.000', style: ts12MediumBlack),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

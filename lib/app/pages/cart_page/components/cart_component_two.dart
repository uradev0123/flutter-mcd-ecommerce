import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartComponentTwo extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Obx(() => Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: height * 0.01),
      child: SingleChildScrollView(
        child: Column(
          children: cartController.selectedProducts.map((product) {
            var formattedPrice =
            NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(product.price);
            formattedPrice = formattedPrice.replaceAll(",00", "");

            return Container(
              height: height * 0.15,
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.01),
              margin: EdgeInsets.only(bottom: height * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.25,
                        child: Image.asset(product.image, fit: BoxFit.fitWidth),
                      ),
                      SizedBox(width: width * 0.025),
                      Container(
                        width: width * 0.28,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name, style: ts12SemiboldBlack),
                            SizedBox(height: height * 0.01),
                            Text(formattedPrice, style: ts12MediumBlack),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            cartController.decrementProductQuantity(product);
                            cartController.calculateSubTotalPrice();
                            cartController.calculateTotalPrice();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: Size(width * 0.07, width * 0.07),
                            backgroundColor: primaryColor,
                          ),
                          child: Icon(Icons.remove, color: blackColor, size: 16),
                        ),

                        Container(
                          width: width * 0.06,
                            child: Text(product.quantity.toString(), style: ts12MediumBlack, textAlign: TextAlign.center,)
                        ),

                        ElevatedButton(
                          onPressed: () {
                            cartController.incrementProductQuantity(product);
                            cartController.calculateSubTotalPrice();
                            cartController.calculateTotalPrice();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: Size(width * 0.07, width * 0.07),
                            backgroundColor: primaryColor,
                          ),
                          child: Icon(Icons.add, color: blackColor, size: 16),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    ));
  }
}
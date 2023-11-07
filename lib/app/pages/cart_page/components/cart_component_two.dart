import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartComponentTwo extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());
  final AllMenuController allMenuController = Get.put(AllMenuController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    cartController.findAndAddSelectedProducts();

    return Obx(() => Container(
      height: height * 0.8,
      width: double.infinity,
      margin: EdgeInsets.only(top: height * 0.01),
      child: ListView.builder(
        itemCount: cartController.selectedProducts.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          var product = cartController.selectedProducts[index];
          var formattedPrice = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(product.price);
          formattedPrice = formattedPrice.replaceAll(",00", "");

          print(product.quantity.toString());

          return Obx(() {
            return Container(
              height: height * 0.2,
              width: double.infinity,
              color: whiteColor,
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: height * 0.05, bottom: height * 0.05),
              margin: EdgeInsets.only(bottom: height * 0.005),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: height * 0.15,
                          child: Image.asset(product.image, fit: BoxFit.fitHeight)
                      ),
                      SizedBox(width: width * 0.01),
                      Container(
                        width: width * 0.325,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name, style: ts12SemiboldBlack),
                            Text(formattedPrice, style: ts12MediumBlack),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(width * 0.015),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            cartController.decrementProductQuantity(product);
                            cartController.findAndAddSelectedProducts();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: Size(width * 0.08, width * 0.08),
                            backgroundColor: primaryColor,
                          ),
                          child: Icon(Icons.remove, color: blackColor, size: 16),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: width * 0.001),
                          child: Text(product.quantity.toString(), style: ts14MediumBlack),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            cartController.incrementProductQuantity(product);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            minimumSize: Size(width * 0.08, width * 0.08),
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
          });
        },
      ),
    ));
  }
}

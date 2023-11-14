import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

Widget gridViewProduct({required context, required controller}) {
  final CartPageController cartController = Get.put(CartPageController());

  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: width * 0.45,
            mainAxisExtent: height * 0.33,
            childAspectRatio: 1 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: List.generate(controller.length, (index) {
          var product = controller[index];
          var formattedPrice =
          NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(product.price);
          formattedPrice = formattedPrice.replaceAll(",00", "");

          return Obx(() {
            bool isSelected = cartController.isProductSelected(product);
            return Container(
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 3),
                    spreadRadius: 0,
                  )
                ],
                border: Border.all(
                  color: isSelected ? primaryColor : Colors.transparent,
                  width: 5,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(product.image, fit: BoxFit.fitHeight),
                      SizedBox(height: height * 0.01),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height * 0.055,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child:
                                    Text(product.name, style: ts14MediumBlack),
                              ),
                            ),
                            SizedBox(height: height * 0.005),
                            Text(formattedPrice, style: ts14MediumGrey),
                          ],
                        ),
                      ),
                    ],
                  ),
                  isSelected
                      ? Container(
                        margin: EdgeInsets.all(width * 0.015),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  cartController.decrementProductQuantity(product);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: primaryColor,
                                ),
                                child: Icon(Icons.remove, color: blackColor),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: width * 0.005),
                                child: Text(product.quantity.toString(), style: ts14MediumBlack),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  cartController.incrementProductQuantity(product);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: primaryColor,
                                ),
                                child: Icon(Icons.add, color: blackColor),
                              ),
                            ],
                          ),
                      )
                      : Container(
                          height: height * 0.035,
                          width: double.infinity,
                          margin: EdgeInsets.all(width * 0.015),
                          child: ElevatedButton(
                            onPressed: () {
                              cartController.addToSelectedProducts(product);
                              cartController.incrementProductQuantity(product);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Icon(Icons.add, size: 20, color: blackColor),
                          ),
                        ),
                ],
              ),
            );
          });
        }),
      ));
}

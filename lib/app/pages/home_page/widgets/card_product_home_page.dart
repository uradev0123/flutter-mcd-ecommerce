import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../common/helper/themes.dart';

Widget cardProductHomePage({required context, required controller}) {
  final CartPageController cartController = Get.put(CartPageController());

  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Obx(() => Container(
        height: height * 0.295,
        margin: EdgeInsets.only(left: width * 0.05),
        child: ListView.builder(
          itemCount: controller.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            var product = controller[index];
            var formattedPrice = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(product.price);
            formattedPrice = formattedPrice.replaceAll(",00", "");
            print(product.name + product.many.toString());

            return Obx(() {
              bool isSelected = cartController.selectedProductIndex.value == index;
              return Container(
                width: width * 0.35,
                margin: EdgeInsets.only(right: width * 0.035, bottom: height * 0.0075),
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
                    color: isSelected ? Colors.yellow : Colors.transparent,
                    width: 3,
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
                                height: height * 0.045,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(product.name,
                                      style: ts10MediumBlack),
                                ),
                              ),
                              SizedBox(height: height * 0.005),
                              Text(formattedPrice, style: ts10MediumGrey),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: height * 0.035,
                      width: double.infinity,
                      margin: EdgeInsets.all(width * 0.015),
                      child: ElevatedButton(
                        onPressed: () {
                          cartController.selectedProductIndex.value = index;
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
          },
        ),
      ));
}

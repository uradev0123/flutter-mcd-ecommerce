import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class MenuComponentOne extends StatelessWidget {
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return AppBar(
      backgroundColor: whiteColor,
      elevation: 2,
      toolbarHeight: height * 0.1,
      leading: homePageController.isRoutingFromHomePage.value
          ? IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
                homePageController.isRoutingFromHomePage.value = false;
              },
            )
          : null,
      title: Container(
        padding: homePageController.isRoutingFromHomePage.value
            ? EdgeInsets.zero
            : EdgeInsets.symmetric(horizontal: width * 0.01),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// Logo and Text
            Row(
              children: [
                Container(
                  width: width * 0.1,
                  height: width * 0.1,
                  decoration: const BoxDecoration(
                    color: secondaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Transform.scale(
                    scale: 0.55,
                    child: Image.asset(
                      "assets/icons/icon_logo_mcdonald.png",
                    ),
                  ),
                ),
                SizedBox(width: width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("McDonald's Kaliurang", style: ts16SemiboldBlack),
                    Text(
                      "Kota Yogyakarta",
                      style: ts12MediumBlack,
                    )
                  ],
                ),
              ],
            ),

            /// Icon Cart
            InkWell(
              onTap: () {
                Get.toNamed('/cart');
              },
              child: Container(
                width: width * 0.1,
                height: width * 0.1,
                decoration: const BoxDecoration(
                  color: whiteColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: blackColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

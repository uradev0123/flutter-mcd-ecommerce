import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class HomeComponentOne extends StatelessWidget {
  const HomeComponentOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return AppBar(
      backgroundColor: primaryColor,
      elevation: 0,
      toolbarHeight: height * 0.1,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
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
                Text(
                  "McDonald's Plus",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/app/mock_data/controller/breakfast.dart';
import 'package:web_pancasila_aceh/app/pages/home_page/widgets/card_product_home_page.dart';

class HomeComponentFive extends StatelessWidget {
  final BreakfastController breakfastController = Get.put(BreakfastController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.05),

        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Text(
              "Breakfast Time (05:00 - 11:00)",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Color(0xFF9A7800),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  )
              )
          ),
        ),

        SizedBox(height: height * 0.025),

        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.02),
                child: SvgPicture.asset("assets/images/wave_breakfast.svg")
            ),
            cardProductHomePage(context: context, controller: breakfastController.breakfast),
          ],
        ),
      ],
    );
  }
}
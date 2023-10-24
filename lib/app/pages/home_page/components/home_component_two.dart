import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HomeComponentTwo extends StatelessWidget {
  const HomeComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, bottom: width * 0.025),
      color: primaryColor,
      child: Container(
        padding: EdgeInsets.all(width * 0.03),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Current Outlet", style: ts10MediumGrey),

            Container(
              padding: EdgeInsets.all(width * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: width * 0.002, color: Color(0xFFCCCCCC))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/icon_shop.svg',
                        width: width * 0.05,
                      ),

                      SizedBox(width: width * 0.02),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("McDonald's Kaliurang", style: ts12MediumBlack),
                          Text("Kota Yogyakarta", style: ts10MediumGrey),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text("2,5 km", style: ts10MediumGrey),

                      SizedBox(width: width * 0.001),

                      Icon(
                        Icons.arrow_forward_ios,
                        color: blackColor,
                        size: width * 0.04,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

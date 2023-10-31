import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class MenuComponentTwo extends StatelessWidget {
  const MenuComponentTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      width: double.infinity,
      height: height * 0.06,
      margin: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.03),
      padding: EdgeInsets.symmetric(horizontal: width * 0.025),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFD9D9D9),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: blackColor),
          SizedBox(width: width * 0.025),
          Text(
            "Search...",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: greyColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                )
            ),
          )
        ],
      ),
    );
  }
}

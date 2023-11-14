import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

Widget menuCircleRed({required context, required String pathImage, required String textValue, required bool isDown}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.25,
    margin: isDown ? EdgeInsets.only(top: height * 0.05) : EdgeInsets.only(top: height * 0.02),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: width * 0.125,
          height: width * 0.125,
          decoration: const BoxDecoration(
            color: secondaryColor,
            shape: BoxShape.circle,
          ),
          child: Transform.scale(
            scale: 0.7,
            child: SvgPicture.asset(
              "assets/icons/icon_$pathImage.svg",
            ),
          ),
        ),
        SizedBox(height: height * 0.005),
        Text(textValue, style: ts10SemiboldBlack),
      ],
    ),
  );
}

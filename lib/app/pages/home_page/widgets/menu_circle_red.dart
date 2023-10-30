import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

Widget menuCircleRed({required context, required String pathImage, required String textValue, required bool isDown}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.25,
    height: isDown ? height * 0.08 : height * 0.125,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width * 0.125,
          height: height * 0.125,
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
      ],
    ),
  );
}

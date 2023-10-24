import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

Widget menuCircleRedDown({required context, required String pathImage, required String textValue}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    width: width * 0.25,
    height: height * 0.125,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width * 0.125,
          height: height * 0.125,
          decoration: BoxDecoration(
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

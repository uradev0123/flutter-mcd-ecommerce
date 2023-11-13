import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

Widget textCategoryPayment({required context, required String textValue}) {
  final Size mediaQuery = MediaQuery.of(context).size;
  final double width = mediaQuery.width;
  final double height = mediaQuery.height;

  return Container(
    margin: EdgeInsets.symmetric(vertical: height * 0.02),
    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
    child: Text(textValue, style: ts12SemiboldGrey,),
  );
}

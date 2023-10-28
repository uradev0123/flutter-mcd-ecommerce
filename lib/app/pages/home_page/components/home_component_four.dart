import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:web_pancasila_aceh/app/mock_data/controller/recommended.dart';
import 'package:web_pancasila_aceh/common/helper/themes.dart';

class HomeComponentFour extends StatelessWidget {
  final RecommendedController recommendedController = Get.put(RecommendedController());

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
          child: Text("You Might Want", style: ts16SemiboldBlack),
        ),

        SizedBox(height: height * 0.025),

        Obx(() => Container(
            height: height * 0.3,
            margin: EdgeInsets.only(left: width * 0.05),
            child: ListView.builder(
              itemCount: recommendedController.recommended.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                var recommended = recommendedController.recommended[index];
                var formattedPrice = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ').format(recommended.price);
                formattedPrice = formattedPrice.replaceAll(",00", "");
                return Container(
                  width: width * 0.35,
                  margin: EdgeInsets.only(right: width * 0.035),
                  padding: EdgeInsets.all(width * 0.03),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 3),
                          blurRadius: 6,)
                      ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Transform.scale(
                        scale: 1.25,
                        child: Image.asset(recommended.image, fit: BoxFit.fitHeight),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.045,
                          child: Align(
                            alignment: Alignment.bottomLeft,
                              child: Text(recommended.name, style: ts10MediumBlack)
                          ),
                      ),
                      SizedBox(height: height * 0.005),
                      Text(formattedPrice, style: ts10MediumGrey),
                    ],
                  ),
                );
              },
            )
        )),
      ],
    );
  }
}

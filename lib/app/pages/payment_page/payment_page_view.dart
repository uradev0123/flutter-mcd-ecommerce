import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/global_component/container_total.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/payment_page/widgets/radio_button_payment.dart';
import 'package:flutter_mcd_ecommerce/app/pages/payment_page/widgets/text_category_payment.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';

class PaymentPageView extends StatelessWidget {
  final CartPageController cartController = Get.put(CartPageController());

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    cartController.calculateTotalPrice();

    return Scaffold(
      backgroundColor: backgroundPageColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.09,
        title: Text('Payment Method', style: ts18SemiboldBlack),
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textCategoryPayment(context: context, textValue: 'E-Money'),
                  radioButtonPayment(context: context, pathImage: 'payment_gopay', name: 'Gopay', value: '0'),
                  radioButtonPayment(context: context, pathImage: 'payment_ovo', name: 'OVO', value: '1'),
                  radioButtonPayment(context: context, pathImage: 'payment_dana', name: 'Dana', value: '2'),
                  radioButtonPayment(context: context, pathImage: 'payment_linkaja', name: 'LinkAja', value: '3'),

                  textCategoryPayment(context: context, textValue: 'Bank Transfer'),
                  radioButtonPayment(context: context, pathImage: 'payment_bca', name: 'Bank BCA', value: '4'),
                  radioButtonPayment(context: context, pathImage: 'payment_mandiri', name: 'Bank Mandiri', value: '5'),
                ],
              ),
            ),
          ),
          ContainerTotal(context: context, textValue: 'Order Now', route: '/', isOffNamed: true)
        ],
      ),
    );
  }
}

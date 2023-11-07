import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/components/cart_component_one.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Scaffold(
      backgroundColor: backgroundPageColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: height * 0.09,
        title: Text('Cart', style: ts18SemiboldBlack),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CartComponentOne(),
            ],
          ),
        ),
      ),
    );
  }
}

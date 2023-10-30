import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/burger.dart';

class MenuPageView extends StatelessWidget {
  final BurgerController burgerController = Get.put(BurgerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Container(
        child: ListView.builder(
          itemCount: burgerController.burger.length,
          itemBuilder: (BuildContext context, int index) {
            var burger = burgerController.burger[index];
            return Container(
              child: Column(
                children: [
                  Text(burger.name + burger.image),
                  Text("Rp. " + burger.price.toString())
                ],
              ),
            );
          },
        )
      )),
    );
  }
}

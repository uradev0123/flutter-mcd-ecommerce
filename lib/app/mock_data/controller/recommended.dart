import 'package:flutter_mcd_ecommerce/app/mock_data/controller/burger.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/chicken.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/dessert.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class RecommendedController extends GetxController {
  RxList<Product> recommended = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    final BurgerController burgerController = Get.put(BurgerController());
    final ChickenController chickenController = Get.put(ChickenController());
    final DessertController dessertController = Get.put(DessertController());

    recommended.addAll([burgerController.burger[3], burgerController.burger[6], chickenController.chicken[7], dessertController.dessert[2], burgerController.burger[2], burgerController.burger[5], burgerController.burger[7], chickenController.chicken[0], chickenController.chicken[1]]);
  }
}

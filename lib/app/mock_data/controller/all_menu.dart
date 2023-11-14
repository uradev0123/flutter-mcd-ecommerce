import 'package:flutter_mcd_ecommerce/app/mock_data/controller/breakfast.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/burger.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/chicken.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/dessert.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/drink.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class AllMenuController extends GetxController {
  RxList<Product> allMenu = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    final BurgerController burgerController = Get.put(BurgerController());
    final ChickenController chickenController = Get.put(ChickenController());
    final DrinkController drinkController = Get.put(DrinkController());
    final DessertController dessertController = Get.put(DessertController());
    final BreakfastController breakfastController = Get.put(BreakfastController());

    allMenu.addAll(burgerController.burger);
    allMenu.addAll(chickenController.chicken);
    allMenu.addAll(drinkController.drink);
    allMenu.addAll(dessertController.dessert);
    allMenu.addAll(breakfastController.breakfast);

    allMenu.shuffle();
  }
}

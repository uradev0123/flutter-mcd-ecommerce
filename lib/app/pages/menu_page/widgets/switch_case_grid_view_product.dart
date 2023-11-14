import 'package:flutter/cupertino.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/all_menu.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/breakfast.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/burger.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/chicken.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/dessert.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/drink.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/widgets/grid_view_product.dart';
import 'package:get/get.dart';

final MenuPageController menuPageController = Get.put(MenuPageController());
final AllMenuController allMenuController = Get.put(AllMenuController());
final BurgerController burgerController = Get.put(BurgerController());
final ChickenController chickenController = Get.put(ChickenController());
final DrinkController drinkController = Get.put(DrinkController());
final DessertController dessertController = Get.put(DessertController());
final BreakfastController breakfastController = Get.put(BreakfastController());

Widget switchCaseGridViewProduct({required context}) {
  switch (menuPageController.selectedCategoryIndex.value) {
    case 0:
      return gridViewProduct(context: context, controller: allMenuController.allMenu);
    case 1:
      return gridViewProduct(context: context, controller: burgerController.burger);
    case 2:
      return gridViewProduct(context: context, controller: chickenController.chicken);
    case 3:
      return gridViewProduct(context: context, controller: drinkController.drink);
    case 4:
      return gridViewProduct(context: context, controller: dessertController.dessert);
    case 5:
      return gridViewProduct(context: context, controller: breakfastController.breakfast);
    default:
      throw UnimplementedError("Unhandled category index: " + menuPageController.selectedCategoryIndex.value.toString());
  }
}
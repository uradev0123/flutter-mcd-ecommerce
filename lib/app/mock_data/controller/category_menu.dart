import 'package:flutter_mcd_ecommerce/app/mock_data/model/category.dart';
import 'package:get/get.dart';

class CategoryMenuController extends GetxController {
  var categoryMenu = <CategoryModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    CategoryModel categoryMenu1 = CategoryModel("All Menu");
    CategoryModel categoryMenu2 = CategoryModel("Burger");
    CategoryModel categoryMenu3 = CategoryModel("Chicken");
    CategoryModel categoryMenu4 = CategoryModel("Drink");
    CategoryModel categoryMenu5 = CategoryModel("Dessert");
    CategoryModel categoryMenu6 = CategoryModel("Breakfast");

    categoryMenu.addAll([categoryMenu1, categoryMenu2, categoryMenu3, categoryMenu4, categoryMenu5, categoryMenu6]);
  }
}

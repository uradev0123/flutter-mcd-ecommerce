import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class RecommendedController extends GetxController {
  var recommended = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product burger4 = Product("burger-4", "burger_cheeseburger", "Cheeseburger", 32000);
    Product burger7 = Product("burger-7", "burger_chicken_burger_deluxe", "Chicken Burger Deluxe", 25000);
    Product chicken8 = Product("chicken-8", "chicken_mcnuggets", "Chicken McNuggets", 38500);
    Product dessert3 = Product("dessert-3", "dessert_mcflurry_feat._oreo", "Mcflurry Feat. Oreo", 14000);
    Product burger3 = Product("burger-3", "burger_big_mac", "Big Mac", 41000);
    Product burger6 = Product("burger-6", "burger_chicken_burger", "Chicken Burger", 22500);
    Product burger8 = Product("burger-8", "burger_double_cheeseburger", "Double Cheeseburger", 39500);
    Product chicken1 = Product("chicken-1", "chicken_ayam_krispy_mcdonald's", "1pc Krispy Chicken", 24000);
    Product chicken2 = Product("chicken-2", "chicken_ayam_spicy_mcdonald's", "1pc Spicy Chicken", 24000);

    recommended.addAll([burger4, burger7, chicken8, dessert3, burger3, burger6, burger8, chicken1, chicken2]);
  }
}

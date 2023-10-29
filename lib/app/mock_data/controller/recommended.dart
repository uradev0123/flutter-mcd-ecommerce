import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class RecommendedController extends GetxController {
  var recommended = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product recommended1 = Product("burger_cheeseburger", "Cheeseburger", 32000);
    Product recommended2 = Product("burger_chicken_burger_deluxe", "Chicken Super Burger Deluxe", 25000);
    Product recommended3 = Product("chicken_mcnuggets", "Mcnuggets", 26000);
    Product recommended4 = Product("dessert_mcflurry_feat._oreo", "Mcflurry Feat. Oreo", 14000);
    Product recommended5 = Product("burger_big_mac", "Big Mac", 41000);
    Product recommended6 = Product("burger_chicken_burger", "Chicken Burger", 22500);
    Product recommended7 = Product("burger_double_cheeseburger", "Double Cheeseburger", 39500);
    Product recommended8 = Product("chicken_ayam_spicy_mcdonald's", "1pc Spicy Chicken", 24000);
    Product recommended9 = Product("chicken_ayam_krispy_mcdonald's", "1pc Krispy Chicken", 24000);

    recommended.addAll([recommended1, recommended2, recommended3, recommended4, recommended5, recommended6, recommended7, recommended8, recommended9]);
  }
}

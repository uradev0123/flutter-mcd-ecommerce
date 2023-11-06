import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class BurgerController extends GetxController {
  var burger = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product burger1 = Product("burger-1", "burger_beef_burger", "Beef Burger", 22500);
    Product burger2 = Product("burger-2", "burger_beef_burger_deluxe", "Beef Burger Deluxe", 25000);
    Product burger3 = Product("burger-3", "burger_big_mac", "Big Mac", 41000);
    Product burger4 = Product("burger-4", "burger_cheeseburger", "Cheeseburger", 32000);
    Product burger5 = Product("burger-5", "burger_cheeseburger_deluxe", "Cheeseburger Deluxe", 33500);
    Product burger6 = Product("burger-6", "burger_chicken_burger", "Chicken Burger", 22500);
    Product burger7 = Product("burger-7", "burger_chicken_burger_deluxe", "Chicken Burger Deluxe", 25000);
    Product burger8 = Product("burger-8", "burger_double_cheeseburger", "Double Cheeseburger", 39500);
    Product burger9 = Product("burger-9", "burger_fish_fillet_burger", "Fish Fillet Burger", 32000);
    Product burger10 = Product("burger-10", "burger_mcchicken", "McChicken", 32000);
    Product burger11 = Product("burger-11", "burger_mcspicy", "McSpicy", 41000);

    burger.addAll([burger1, burger2, burger3, burger4, burger5, burger6, burger7, burger8, burger9, burger10, burger11]);
  }
}

import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class BurgerController extends GetxController {
  var burger = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product burger1 = Product("burger_beef_burger", "Beef Burger", 22500);
    Product burger2 = Product("burger_beef_burger_deluxe", "Beef Burger Deluxe", 25000);
    Product burger3 = Product("burger_big_mac", "Big Mac", 41000);
    Product burger4 = Product("burger_cheeseburger", "Cheeseburger", 32000);
    Product burger5 = Product("burger_cheeseburger_deluxe", "Cheeseburger Deluxe", 33500);
    Product burger6 = Product("burger_chicken_burger", "Chicken Burger", 22500);
    Product burger7 = Product("burger_chicken_burger_deluxe", "Chicken Burger Deluxe", 25000);
    Product burger8 = Product("burger_double_cheeseburger", "Double Cheeseburger", 39500);
    Product burger9 = Product("burger_fish_fillet_burger", "Fish Fillet Burger", 32000);
    Product burger10 = Product("burger_mcchicken", "McChicken", 32000);
    Product burger11 = Product("burger_mcspicy", "McSpicy", 41000);

    burger.addAll([burger1, burger2, burger3, burger4, burger5, burger6, burger7, burger8, burger9, burger10, burger11]);
  }
}

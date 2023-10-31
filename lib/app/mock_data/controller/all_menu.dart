import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class AllMenuController extends GetxController {
  var allMenu = <Product>[].obs;

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
    Product chicken1 = Product("chicken_ayam_krispy_mcdonald's", "1pc Krispy Chicken", 24000);
    Product chicken2 = Product("chicken_ayam_spicy_mcdonald's", "1pc Spicy Chicken", 24000);
    Product chicken3 = Product("chicken_pamer_5", "PaMer 5 Krispy Medium", 130000);
    Product chicken4 = Product("chicken_pamer_7", "PaMer 7 Krispy Medium", 183000);
    Product chicken5 = Product("chicken_panas_1", "PaNas 1 Krispy, Large", 44500);
    Product chicken6 = Product("chicken_panas_2_with_fries", "PaNas 2 Krispy with Fries, Large", 60500);
    Product chicken7 = Product("chicken_panas_special", "PaNas Special Krispy, Large", 52500);
    Product drink1 = Product("drink_coca_cola", "Coca Cola", 14000);
    Product drink2 = Product("drink_coca_cola_mcfloat", "Coke Float", 15000);
    Product drink3 = Product("drink_fanta", "Fanta", 14000);
    Product drink4 = Product("drink_fanta_mcfloat", "Fanta Float", 15000);
    Product drink5 = Product("drink_fruit_tea_blackcurrant", "Fruit Tea Blackcurrant", 9500);
    Product drink6 = Product("drink_fruit_tea_lemon", "Fruit Tea Lemon", 1400);
    Product drink7 = Product("drink_hot_coffee", "Hot Coffee", 12000);
    Product drink8 = Product("drink_iced_milo", "Milo", 21500);
    Product dessert1 = Product("dessert_chocolate_sundae", "Chocolate Sundae", 12000);
    Product dessert2 = Product("dessert_mcflurry_choco", "Mcflurry Choco", 14000);
    Product dessert3 = Product("dessert_mcflurry_feat._oreo", "Mcflurry Feat. Oreo", 14000);
    Product dessert4 = Product("dessert_strawberry_sundae", "Strawberry Sundae", 12000);
    Product dessert5 = Product("dessert_apple_pie", "Apple Pie", 12500);

    allMenu.addAll([burger1, burger2, burger3, burger4, burger5, burger6, burger7, burger8, burger9, burger10, burger11, chicken1, chicken2, chicken3, chicken4, chicken5, chicken6, chicken7, drink1, drink2, drink3, drink4, drink5, drink6, drink7, drink8, dessert1, dessert2, dessert3, dessert4, dessert5]);

    allMenu.shuffle();
  }
}

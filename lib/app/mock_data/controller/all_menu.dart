import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class AllMenuController extends GetxController {
  RxList<Product> allMenu = <Product>[].obs;

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
    Product chicken1 = Product("chicken-1", "chicken_ayam_krispy_mcdonald's", "1pc Krispy Chicken", 24000);
    Product chicken2 = Product("chicken-2", "chicken_ayam_spicy_mcdonald's", "1pc Spicy Chicken", 24000);
    Product chicken3 = Product("chicken-3", "chicken_pamer_5", "PaMer 5 Krispy Medium", 130000);
    Product chicken4 = Product("chicken-4", "chicken_pamer_7", "PaMer 7 Krispy Medium", 183000);
    Product chicken5 = Product("chicken-5", "chicken_panas_1", "PaNas 1 Krispy, Large", 44500);
    Product chicken6 = Product("chicken-6", "chicken_panas_2_with_fries", "PaNas 2 Krispy with Fries, Large", 60500);
    Product chicken7 = Product("chicken-7", "chicken_panas_special", "PaNas Special Krispy, Large", 52500);
    Product chicken8 = Product("chicken-8", "chicken_mcnuggets", "Chicken McNuggets", 38500);
    Product drink1 = Product("drink-1", "drink_coca_cola", "Coca Cola", 14000);
    Product drink2 = Product("drink-2", "drink_coca_cola_mcfloat", "Coke Float", 15000);
    Product drink3 = Product("drink-3", "drink_fanta", "Fanta", 14000);
    Product drink4 = Product("drink-4", "drink_fanta_mcfloat", "Fanta Float", 15000);
    Product drink5 = Product("drink-5", "drink_fruit_tea_blackcurrant", "Fruit Tea Blackcurrant", 9500);
    Product drink6 = Product("drink-6", "drink_fruit_tea_lemon", "Fruit Tea Lemon", 1400);
    Product drink7 = Product("drink-7", "drink_hot_coffee", "Hot Coffee", 12000);
    Product drink8 = Product("drink-8", "drink_iced_milo", "Milo", 21500);
    Product dessert1 = Product("dessert-1", "dessert_chocolate_sundae", "Chocolate Sundae", 12000);
    Product dessert2 = Product("dessert-2", "dessert_mcflurry_choco", "Mcflurry Choco", 14000);
    Product dessert3 = Product("dessert-3", "dessert_mcflurry_feat._oreo", "Mcflurry Feat. Oreo", 14000);
    Product dessert4 = Product("dessert-4", "dessert_strawberry_sundae", "Strawberry Sundae", 12000);
    Product dessert5 = Product("dessert-5", "dessert_apple_pie", "Apple Pie", 12500);
    Product breakfast1 = Product("breakfast-1", "breakfast_egg_mcmuffin", "Egg McMuffin", 28000);
    Product breakfast2 = Product("breakfast-2", "breakfast_egg_and_cheese_muffin", "Egg & Cheese Muffin", 19000);
    Product breakfast3 = Product("breakfast-3", "breakfast_chicken_muffin", "Chicken McMuffin", 27500);
    Product breakfast4 = Product("breakfast-4", "breakfast_chicken_muffin_with_egg", "Chicken McMuffin with Egg", 32000);
    Product breakfast5 = Product("breakfast-5", "breakfast_sausage_mcmuffin", "Sausage McMuffin", 29500);
    Product breakfast6 = Product("breakfast-6", "breakfast_sausage_mcmuffin_with_egg", "Sausage McMuffin with Egg", 33000);
    Product breakfast7 = Product("breakfast-7", "breakfast_hashbrown", "HashBrown", 13500);
    Product breakfast8 = Product("breakfast-8", "breakfast_big_breakfast", "Big Breakfast", 39500);
    Product breakfast9 = Product("breakfast-9", "breakfast_bubur_ayam_mcd", "McD Chicken Porridge", 15000);

    allMenu.addAll([burger1, burger2, burger3, burger4, burger5, burger6, burger7, burger8, burger9, burger10, burger11, chicken1, chicken2, chicken3, chicken4, chicken5, chicken6, chicken7, chicken8, drink1, drink2, drink3, drink4, drink5, drink6, drink7, drink8, dessert1, dessert2, dessert3, dessert4, dessert5, breakfast1, breakfast2, breakfast3, breakfast4, breakfast5, breakfast6, breakfast7, breakfast8, breakfast9]);

    allMenu.shuffle();
  }
}

import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class RecommendedController extends GetxController {
  var recommended = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product recommended1 = new Product("assets/images/burger_cheeseburger.png", "Cheeseburger", 32000);
    Product recommended2 = new Product("assets/images/burger_chicken_burger_deluxe.png", "Chicken Super Burger Deluxe", 25000);
    Product recommended3 = new Product("assets/images/chicken_mcnuggets.png", "Mcnuggets", 26000);
    Product recommended4 = new Product("assets/images/burger_cheeseburger.png", "Cheeseburger", 32000);
    Product recommended5 = new Product("assets/images/burger_chicken_burger_deluxe.png", "Chicken Burger Deluxe", 25000);
    Product recommended6 = new Product("assets/images/chicken_mcnuggets.png", "Mcnuggets", 26000);
    Product recommended7 = new Product("assets/images/burger_cheeseburger.png", "Cheeseburger", 32000);
    Product recommended8 = new Product("assets/images/burger_chicken_burger_deluxe.png", "Chicken Burger Deluxe", 25000);
    Product recommended9 = new Product("assets/images/chicken_mcnuggets.png", "Mcnuggets", 26000);

    recommended.addAll([recommended1, recommended2, recommended3, recommended4, recommended5, recommended6, recommended7, recommended8, recommended9]);
  }
}

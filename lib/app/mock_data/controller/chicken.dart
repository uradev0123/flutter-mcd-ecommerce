import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class BurgerController extends GetxController {
  var chicken = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product chicken1 = Product("chicken_ayam_krispy_mcdonald's", "1pc Krispy Chicken", 24000);
    Product chicken2 = Product("chicken_ayam_spicy_mcdonald's", "1pc Spicy Chicken", 24000);
    Product chicken3 = Product("chicken_pamer_5", "PaMer 5 Krispy Medium", 130000);
    Product chicken4 = Product("chicken_pamer_7", "PaMer 7 Krispy Medium", 183000);
    Product chicken5 = Product("chicken_panas_1", "PaNas 1 Krispy, Large", 44500);
    Product chicken6 = Product("chicken_panas_2_with_fries", "PaNas 2 Krispy with Fries, Large", 60500);
    Product chicken7 = Product("chicken_panas_special", "PaNas Special Krispy, Large", 52500);

    chicken.addAll([chicken1, chicken2, chicken3, chicken4, chicken5, chicken6, chicken7]);
  }
}

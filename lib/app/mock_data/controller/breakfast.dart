import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class BreakfastController extends GetxController {
  var breakfast = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product breakfast1 = Product("breakfast-1", "breakfast_egg_mcmuffin", "Egg McMuffin", 28000);
    Product breakfast2 = Product("breakfast-2", "breakfast_egg_and_cheese_muffin", "Egg & Cheese Muffin", 19000);
    Product breakfast3 = Product("breakfast-3", "breakfast_chicken_muffin", "Chicken McMuffin", 27500);
    Product breakfast4 = Product("breakfast-4", "breakfast_chicken_muffin_with_egg", "Chicken McMuffin with Egg", 32000);
    Product breakfast5 = Product("breakfast-5", "breakfast_sausage_mcmuffin", "Sausage McMuffin", 29500);
    Product breakfast6 = Product("breakfast-6", "breakfast_sausage_mcmuffin_with_egg", "Sausage McMuffin with Egg", 33000);
    Product breakfast7 = Product("breakfast-7", "breakfast_hashbrown", "HashBrown", 13500);
    Product breakfast8 = Product("breakfast-8", "breakfast_big_breakfast", "Big Breakfast", 39500);
    Product breakfast9 = Product("breakfast-9", "breakfast_bubur_ayam_mcd", "McD Chicken Porridge", 15000);

    breakfast.addAll([breakfast1, breakfast2, breakfast3, breakfast4, breakfast5, breakfast6, breakfast7, breakfast8, breakfast9]);
  }
}

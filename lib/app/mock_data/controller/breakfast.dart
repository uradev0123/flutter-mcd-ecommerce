import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class BreakfastController extends GetxController {
  var breakfast = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product breakfast1 = Product("breakfast_egg_mcmuffin", "Egg McMuffin", 28000);
    Product breakfast2 = Product("breakfast_egg_and_cheese_muffin", "Egg & Cheese Muffin", 19000);
    Product breakfast3 = Product("breakfast_chicken_muffin", "Chicken McMuffin", 27500);
    Product breakfast4 = Product("breakfast_chicken_muffin_with_egg", "Chicken McMuffin with Egg", 32000);
    Product breakfast5 = Product("breakfast_sausage_mcmuffin", "Sausage McMuffin", 29500);
    Product breakfast6 = Product("breakfast_sausage_mcmuffin_with_egg", "Sausage McMuffin with Egg", 33000);
    Product breakfast7 = Product("breakfast_hashbrown", "HashBrown", 13500);
    Product breakfast8 = Product("breakfast_big_breakfast", "Big Breakfast", 39500);
    Product breakfast9 = Product("breakfast_bubur_ayam_mcd", "McD Chicken Porridge", 15000);

    breakfast.addAll([breakfast1, breakfast2, breakfast3, breakfast4, breakfast5, breakfast6, breakfast7, breakfast8, breakfast9]);
  }
}

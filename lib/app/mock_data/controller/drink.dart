import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class DrinkController extends GetxController {
  var drink = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product drink1 = Product("drink_coca_cola", "Coca Cola", 14000);
    Product drink2 = Product("drink_coca_cola_mcfloat", "Coke Float", 15000);
    Product drink3 = Product("drink_fanta", "Fanta", 14000);
    Product drink4 = Product("drink_fanta_mcfloat", "Fanta Float", 15000);
    Product drink5 = Product("drink_fruit_tea_blackcurrant", "Fruit Tea Blackcurrant", 9500);
    Product drink6 = Product("drink_fruit_tea_lemon", "Fruit Tea Lemon", 1400);
    Product drink7 = Product("drink_hot_coffee", "Hot Coffee", 12000);
    Product drink8 = Product("drink_iced_milo", "Milo", 21500);

    drink.addAll([drink1, drink2, drink3, drink4, drink5, drink6, drink7, drink8]);
  }
}

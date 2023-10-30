import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/model/product.dart';

class DessertController extends GetxController {
  var dessert = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product dessert1 = Product("dessert_chocolate_sundae", "Chocolate Sundae", 12000);
    Product dessert2 = Product("dessert_mcflurry_choco", "Mcflurry Choco", 14000);
    Product dessert3 = Product("dessert_mcflurry_feat._oreo", "Mcflurry Feat. Oreo", 14000);
    Product dessert4 = Product("dessert_strawberry_sundae", "Strawberry Sundae", 12000);
    Product dessert5 = Product("dessert_apple_pie", "Apple Pie", 12500);

    dessert.addAll([dessert1, dessert2, dessert3, dessert4, dessert5]);
  }
}

import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/mock_data/model/product.dart';

class BurgerController extends GetxController {
  var burger = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    Product burger1 = new Product("asd", "asda", 123);
    Product burger2 = new Product("bbb", "bbb", 456);

    burger?.addAll([burger1, burger2]);
  }
}

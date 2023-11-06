import 'package:get/get.dart';

class CartPageController extends GetxController {
  RxInt selectedProductIndex = 10000000.obs;
  RxBool isSelected = false.obs;

  final count = 0.obs;

  void increment() => count.value++;
  void decrement() => count.value--;
}

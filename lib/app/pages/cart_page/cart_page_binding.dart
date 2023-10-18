import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/cart_page/cart_page_controller.dart';


class CartPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartPageController>(
          () => CartPageController(),
    );
  }
}

import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';


class MenuPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuPageController>(
          () => MenuPageController(),
    );
  }
}

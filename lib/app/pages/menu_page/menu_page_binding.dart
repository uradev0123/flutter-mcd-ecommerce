import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/menu_page/menu_page_controller.dart';


class MenuPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuPageController>(
          () => MenuPageController(),
    );
  }
}

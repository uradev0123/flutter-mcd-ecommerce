import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_controller.dart';


class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
          () => HomePageController(),
    );
  }
}

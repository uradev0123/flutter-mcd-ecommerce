import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/home_page/home_page_controller.dart';


class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
          () => HomePageController(),
    );
  }
}

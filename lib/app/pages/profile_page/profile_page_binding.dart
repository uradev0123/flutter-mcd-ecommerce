import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/profile_page_controller.dart';


class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(
          () => ProfilePageController(),
    );
  }
}

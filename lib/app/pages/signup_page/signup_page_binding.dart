import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/signup_page/signup_page_controller.dart';


class SignupPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(
          () => ProfilePageController(),
    );
  }
}

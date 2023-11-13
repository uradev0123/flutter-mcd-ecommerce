import 'package:flutter_mcd_ecommerce/app/pages/payment_succesful_page/payment_succesful_page_controller.dart';
import 'package:get/get.dart';

class PaymentSuccesfulPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentSuccesfulPageController>(
          () => PaymentSuccesfulPageController(),
    );
  }
}

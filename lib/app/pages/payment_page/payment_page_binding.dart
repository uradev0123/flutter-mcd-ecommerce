import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/payment_page/payment_page_controller.dart';


class PaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentPageController>(
          () => PaymentPageController(),
    );
  }
}

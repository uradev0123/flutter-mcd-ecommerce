import 'package:get/get.dart';
import 'package:web_pancasila_aceh/app/pages/payment_page/payment_page_controller.dart';


class PaymentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentPageController>(
          () => PaymentPageController(),
    );
  }
}

import 'package:get/get.dart';

class PaymentPageController extends GetxController {

  final RxString orderType = "0".obs;
  RxString get orderTypeString => orderType;
  void setOrderType(String type) {
    orderType.value = type;
  }

}

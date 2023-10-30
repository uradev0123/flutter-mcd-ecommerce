import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/history_page_controller.dart';


class HistoryPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryPageController>(
          () => HistoryPageController(),
    );
  }
}

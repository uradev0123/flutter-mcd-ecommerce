import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPageController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxInt selectedCategoryIndex = 0.obs;

  void scrollTo({required context,  required int index}) {
    final double width = MediaQuery.of(context).size.width;
    double scrollToPosition = index * (width * 0.25);
    scrollController.animateTo(
      scrollToPosition,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';

import 'package:get/get.dart';

import 'common/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: blackColor),
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

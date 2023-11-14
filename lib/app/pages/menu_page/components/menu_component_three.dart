import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/category_menu.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/widgets/switch_case_grid_view_product.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponentThree extends StatelessWidget {
  final MenuPageController menuPageController = Get.put(MenuPageController());
  final CategoryMenuController categoryMenuController = Get.put(CategoryMenuController());


  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Obx(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        menuPageController.scrollTo(context: context, index: menuPageController.selectedCategoryIndex.value);
      });
      return Column(
        children: [
          Container(
            height: height * 0.0515,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFD9D9D9),
                  width: 1,
                ),
              ),
            ),
            child: ListView.builder(
              controller: menuPageController.scrollController,
              itemCount: categoryMenuController.categoryMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                var category = categoryMenuController.categoryMenu[index];

                return Obx(() {
                  bool isSelected = menuPageController.selectedCategoryIndex.value == index;
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          menuPageController.selectedCategoryIndex.value = index;
                          menuPageController.scrollTo(context: context, index: index);
                        },
                        child: Container(
                          height: height * 0.05,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: isSelected ? Colors.red : Colors.transparent,
                                width: 3,
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              category.name,
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: isSelected ? secondaryColor : greyColor,
                                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                });
              },
            ),
          ),
          SizedBox(height: height * 0.03),
          switchCaseGridViewProduct(context: context),
        ],
      );
    });
  }
}

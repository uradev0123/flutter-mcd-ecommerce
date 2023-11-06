import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/mock_data/controller/category_menu.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_controller.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponentThree extends StatelessWidget {
  final MenuPageController controller = Get.put(MenuPageController());
  final CategoryMenuController categoryMenuController = Get.put(CategoryMenuController());


  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Obx(() {
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
              itemCount: categoryMenuController.categoryMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                var category = categoryMenuController.categoryMenu[index];

                return Obx(() {
                  bool isSelected = controller.selectedCategoryIndex.value == index;
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.selectedCategoryIndex.value = index;
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
          controller.getMenuControllerWidget(context: context),
        ],
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/component/history_component_one.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/component/history_component_two.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';


class HistoryPageView extends StatelessWidget {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HistoryPage1(),
              HistoryPage2(),
            ],
          ),
        ),
      ),
    );
  }
}

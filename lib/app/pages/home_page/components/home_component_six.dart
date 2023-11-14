import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeComponentSix extends StatelessWidget {
  const HomeComponentSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

      return Column(
    children: [
      SizedBox(height: height * 0.05),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('News', style: ts16SemiboldBlack),
          ],
        ),
      ),
      SizedBox(height: height * 0.015),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Image.asset('assets/images/imgA.png', fit: BoxFit.fitWidth),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Image.asset('assets/images/imgB.png', fit: BoxFit.fitWidth),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Image.asset('assets/images/imgC.png', fit: BoxFit.fitWidth),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), 
                child: Image.asset('assets/images/imgD.png', fit: BoxFit.fitWidth),
              ),
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    ],
  );
  }
}

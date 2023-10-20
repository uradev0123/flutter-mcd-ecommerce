import 'package:flutter/cupertino.dart';

class HomeComponentOne extends StatelessWidget {
  const HomeComponentOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Container(
      width: width,
      child: Column(
        children: [
          Text("Ini Component Pertama"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HistoryPage2 extends StatefulWidget {
  @override
  _HistoryPage2State createState() => _HistoryPage2State();
}

class _HistoryPage2State extends State<HistoryPage2> {
  int selectedStar = 0; // To track the selected star

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.shopping_bag, color: Colors.white),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "06 Oct 2023",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      SizedBox(width: 270),
                      Text(
                        "Completed",
                        style: TextStyle(color: Colors.green, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Text(
                    "Mcdonald’s Kaliurang, Yogyakarta",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6,),
                  Text(
                    "1 PaNas Spesial, 2 Chicken Muffin",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "32.000",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 4),
                      Container(
                        width: 80, 
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            "Saved 22K",
                            style: TextStyle(color: Colors.yellow, fontSize: 11),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "3 items",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8),
          Container(
            width: 250,
            height: 45, 
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Rate Your Food",
                  style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
                ),
                ...List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedStar = index + 1;
                      });
                    },
                    child: Icon(
                      index < selectedStar
                          ? Icons.star
                          : Icons.star_border,
                      color: index < selectedStar
                          ? Colors.yellow
                          : Colors.grey,
                    ),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

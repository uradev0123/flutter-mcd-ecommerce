import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "First Name",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "John",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey),
          SizedBox(height: 12),
          Text(
            "Last Name",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Doe",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey),
          SizedBox(height: 12),
          Text(
            "Phone",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "+62123456789",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey),
          SizedBox(height: 12),
          Text(
            "Email",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "JohnDoe@gmail.com",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey),
          SizedBox(height: 15),
          // Add other profile information here
        ],
      ),
    );
  }
}
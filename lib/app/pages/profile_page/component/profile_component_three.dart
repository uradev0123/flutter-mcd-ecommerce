import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_view.dart';

class ProfilePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Kebijakan Privasi",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(height: 16),
          // Add confirmation dialog for logout
          GestureDetector(
            onTap: () {
              // Show logout confirmation dialog
              showLogoutDialog(context);
            },
            child: Text(
              "Keluar",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  // Function to show the logout confirmation dialog
  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Apakah Anda yakin ingin keluar?"),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text("Tidak"),
            ),
            TextButton(
              onPressed: () {
                // Handle logout and navigate to login page
                // You can clear shared preferences or perform any other logout action here
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPageView()),
                );
              },
              child: Text("Iya"),
            ),
          ],
        );
      },
    );
  }
}

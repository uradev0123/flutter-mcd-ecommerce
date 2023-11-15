import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
          FutureBuilder<String>(
            future: getUserData('name'),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data!,
                  style: TextStyle(color: Colors.grey),
                );
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
          SizedBox(height: 4),
          Divider(color: Colors.grey),
          // Add other profile information here
        ],
      ),
    );
  }

  // Function to get user data from shared preferences
  Future<String> getUserData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }
}

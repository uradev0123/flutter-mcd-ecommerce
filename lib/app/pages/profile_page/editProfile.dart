import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        actions: [
          IconButton(
            onPressed: () {
              // Handle save button click
              saveProfileChanges();
            },
            icon: Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: "First Name"),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: "Last Name"),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: "Phone"),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            // Add other editable profile information here
          ],
        ),
      ),
    );
  }

  // Function to save profile changes using shared preferences
  void saveProfileChanges() {
    // Get values from text controllers
    String firstName = _firstNameController.text;
    String lastName = _lastNameController.text;
    String phone = _phoneController.text;
    String email = _emailController.text;

    // Save values to shared preferences
    // You can use any shared preferences package here
    // For example, using the shared_preferences package:
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString("firstName", firstName);
    // prefs.setString("lastName", lastName);
    // prefs.setString("phone", phone);
    // prefs.setString("email", email);

    // After saving, you can navigate back to the profile page
    Navigator.pop(context);
  }
}

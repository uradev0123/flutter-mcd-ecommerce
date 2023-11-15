import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginPage2 extends StatefulWidget {
  @override
  _loginPage2State createState() => _loginPage2State();
}

class _loginPage2State extends State<loginPage2> {
  bool _isPasswordVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double width = mediaQuery.width;
    final double height = mediaQuery.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        Container(
          width: width * 0.8,
          height: height * 0.09,
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: width * 0.8,
          height: height * 0.09,
          child: TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: greyColor),
              ),
              suffixIcon: IconButton(
                icon: _isPasswordVisible
                    ? Icon(Icons.visibility, color: primaryColor)
                    : Icon(Icons.visibility_off, color: primaryColor),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Function to save user data using shared preferences after login
  void saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', _emailController.text);
    // You can add more data as needed
  }
}

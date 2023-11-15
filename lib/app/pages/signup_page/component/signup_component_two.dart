import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/signup_page_view.dart';
import 'package:flutter_mcd_ecommerce/common/helper/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupPage2 extends StatefulWidget {
  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {
  bool _isPasswordVisible = false;
  TextEditingController _namaController = TextEditingController();
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
            controller: _namaController,
            decoration: InputDecoration(
              labelText: 'Name',
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

  void saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', _namaController.text);
    prefs.setString('email', _emailController.text);
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageView extends StatefulWidget {
  final LoginPageController controller = Get.find();

  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: widget.controller.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SvgPicture.asset(
                'assets/images/login_image.svg',
                ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email harus diisi';
                  }
                  if (!value.endsWith('@gmail.com')) {
                    return 'Email harus berakhir dengan @gmail.com';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (value != null && value.isNotEmpty && value.endsWith('@gmail.com')) {
                    setState(() {
                      widget.controller.setEmail('');
                    });
                  }
                  widget.controller.setEmail(value ?? '');
                },
              ),
              SizedBox(height: 10.0),
              TextFormField(
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.red, 
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password harus diisi';
                  }
                  return null;
                },
                onChanged: widget.controller.setPassword,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (widget.controller.formKey.currentState?.validate() ?? false) {
                    widget.controller.handleLogin();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  Get.toNamed('/register');
                },
                child: Text(
                  'Don’t have an account? Sign Up now.',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
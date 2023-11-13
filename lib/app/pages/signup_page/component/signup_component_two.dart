import 'package:flutter/material.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/signup_page_view.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 15),
        Container(
          width: 300,
          height: 65,
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Nama',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 65,
          child: TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 65,
          child: TextFormField(
            obscureText: !_isPasswordVisible,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              suffixIcon: IconButton(
                icon: _isPasswordVisible
                    ? Icon(Icons.visibility, color: Colors.yellow)
                    : Icon(Icons.visibility_off, color: Colors.yellow),
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
}

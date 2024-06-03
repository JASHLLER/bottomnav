import 'package:flutter/material.dart';
import 'package:users/pages/login_page.dart';
import 'package:users/pages/register.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initially, show login page
  bool ShowLoginpage = true;

  //toggle between login and register page
  void togglePages() {
    setState(() {
      ShowLoginpage = !ShowLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShowLoginpage) {
      return LoginPage(
        onTap: togglePages,
      );
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}

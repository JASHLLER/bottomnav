import 'package:flutter/material.dart';
import 'package:users/auth/login_or_register.dart';
import 'package:users/pages/login_page.dart';
import 'package:users/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
      theme: lightMode,
    );
  }
}

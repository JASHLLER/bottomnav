import 'package:flutter/material.dart';
import 'package:users/components/my_button.dart';
import 'package:users/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  //email and PW controller
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwlController = TextEditingController();

  //tap to go to register page
  final void Function()? onTap;

  //login method
  LoginPage({super.key, required this.onTap});
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),

          const SizedBox(height: 50),

          //welcome back message
          Text(
            "Welcome Back",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 25),
          // email textfield
          MyTextfeild(
            hintText: "Email",
            obscureText: false,
            controller: _emailController,
          ),

          const SizedBox(height: 10),
          //pw texfield
          MyTextfeild(
            hintText: "Password",
            obscureText: true,
            controller: _pwlController,
          ),

          const SizedBox(height: 25),

          //login button
          MyButton(
            text: "Login",
            onTap: login,
          ),

          const SizedBox(height: 25),
          //register now

          Row(
            children: [
              Text(
                "Dont have an account?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  "Register now",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

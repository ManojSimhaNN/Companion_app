import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/register_page.dart';

class LoginOnRegisterPage extends StatefulWidget {
  const LoginOnRegisterPage({super.key});

  @override
  State<LoginOnRegisterPage> createState() => _LoginOnRegisterPageState();
}

class _LoginOnRegisterPageState extends State<LoginOnRegisterPage> {
  //initially show login page
  bool showLoginPage = true;

  //toggle between login and register
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
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

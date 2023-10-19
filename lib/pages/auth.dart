import 'package:flutter/material.dart';
import 'package:flutter_mind/pages/login.dart';
import 'package:flutter_mind/pages/register.dart';

class AuthhPage extends StatefulWidget {
  const AuthhPage({Key? key}) : super(key: key);

  @override
  State<AuthhPage> createState() => _AuthhPageState();
}

class _AuthhPageState extends State<AuthhPage> {
  bool showLoginPage = true;
  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}

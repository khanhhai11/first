import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ElevatedButton(onPressed: () {
        isLoggedIn = true;
        context.goNamed(ScreenName.home.toString());
      }, child: Text("Login here")),
    );
  }
}

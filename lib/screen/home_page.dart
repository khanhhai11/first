import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ElevatedButton(onPressed: () {
        context.pushNamed(ScreenName.setting.toString());
      }, child: Text("Setting")),
    );
  }
}

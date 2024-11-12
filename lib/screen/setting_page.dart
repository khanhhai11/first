import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router.dart';
import 'package:gorouter/screen/notification_settings_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  runthisFunction() {
    print("hey");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setting"),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(ScreenName.notification.toString());
                },
                child: Text("noti")),
          ],
        ));
  }
}
//Navigator: simple, for simple app
//Router: Web, deep linking: open a specific screen of another app,

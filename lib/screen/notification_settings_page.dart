import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationsSettingsPage extends StatelessWidget {

  const NotificationsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("notification"),
        ),
        body: ElevatedButton(
          onPressed:(){
            // if (Navigator.canPop(context)) {
            //   Navigator.pop(context);
            // }
            if (GoRouter.of(context).canPop()){
              GoRouter.of(context).pop();
            }
          },
          child: Text("go back"),
        ));
  }
}

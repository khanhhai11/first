import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/screen/login_page.dart';

// Import your page widgets
import 'screen/home_page.dart';
import 'screen/profileScreen.dart';
import 'screen/setting_page.dart';
import 'screen/user_page.dart';
import 'screen/error_page.dart';
import 'screen/notification_settings_page.dart';
// lol
enum ScreenName {home,setting,notification,login}
bool isLoggedIn = false;
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        name: ScreenName.home.toString(),
        builder: (context, state) {
          return HomePage();
        }),
    GoRoute(
        path: '/settings',
        redirect: (context,state){
          if (!isLoggedIn){
            return '/login';
          }
          return null;
        },
        name: ScreenName.setting.toString(),
        builder: (context, state) => SettingPage(),
        routes: [
          GoRoute(
              path: 'notifications',
              name: ScreenName.notification.toString(),
              builder: (context, state) {
                return NotificationsSettingsPage();
                  })
        ]),
    GoRoute(
      path: '/login',
      name: ScreenName.login.toString(),
      builder: (context,state) => LoginPage()
    )
  ],
);

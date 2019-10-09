import 'package:flutter/material.dart';
import 'package:pms/screens/videocall_screen.dart';

class MyNavigator {
  static void gotoHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/home', (_) => false);
  }

  static void goToPageNamed(BuildContext context, String page) {
    Navigator.pushNamedAndRemoveUntil(context, page, (_) => false);
  }

  static void pushPageNamed(BuildContext context, String page) {
    Navigator.pushNamed(context, page);
  }

  static void goToPage(BuildContext context, Widget page) {
    Navigator.push(context,
        // MaterialPageRoute(builder: (context) => page, fullscreenDialog: true));
        MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return page;
      },
    ));
  }
}

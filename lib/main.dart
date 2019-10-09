import 'package:flutter/material.dart';
import 'package:pms/screens/login.dart';
import 'package:pms/screens/new_homescreen.dart';
import 'package:camera/camera.dart';
import 'dart:async';

import 'package:pms/screens/register.dart';
import 'package:pms/screens/splash_screen.dart';
import 'package:pms/screens/videocall_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<CameraDescription> cameras;

  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => HomeScreen(),
    '/splash': (BuildContext context) => SplashScreen(),
    '/login': (BuildContext context) => LoginScreen(),
    '/register': (BuildContext context) => RegisterScreen(),
    '/video': (BuildContext context) => VideoCallScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Monitoring System',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,

        //Define the default brightness and colors
        // brightness: Brightness.light,
        // primaryColor: Colors.teal,
        // accentColor: Colors.teal,

        // Define the default font family.
        fontFamily: 'Montserrat',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        // textTheme: TextTheme(
        // headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        // title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
        // body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        // ),
      ),
      initialRoute: '/splash',
      routes: routes,
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pms/utils/my_navigator.dart';

class SplashScreen extends StatefulWidget {
  List<CameraDescription> cameras;
  // SplashScreen({Key key, @required this.cameraLoaded}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<CameraDescription> cameras;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // initializeCamera();
    Timer(Duration(seconds: 8), () {
      MyNavigator.goToPageNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.child_friendly,
                              color: Theme.of(context).primaryColor,
                              size: 50.0),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.0),
                        ),
                        Text(
                          'PPMS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            'Patient Monitoring System',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        'Health care at your door step',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:camera/camera.dart';
import 'package:pms/screens/chat_screen.dart';
import 'package:pms/screens/new_homescreen.dart';
import 'package:pms/utils/my_navigator.dart';

class VideoCallScreen extends StatefulWidget {
  // List<CameraDescription> cameras;

  // VideoCallScreen({Key key, @required this.cameras}) : super(key: key);
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  CameraController controller;

  // @override
  // void initState() {
  //   super.initState();
  //   controller = CameraController(widget.cameras.last, ResolutionPreset.max);
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     controller.startImageStream((onAvailable) {
  //       print(onAvailable);
  //     });
  //     print(controller.toString());
  //     setState(() {});
  //   });
  // }

  // @override
  // void dispose() {
  //   controller.stopImageStream();
  //   controller?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(
    //       child: Text(
    //     'This is the chat screen',
    //   )),
    // );

    return Scaffold(
      body: Stack(fit: StackFit.expand, children: <Widget>[
        Container(
          // margin: EdgeInsets.only(top: 20.0),
          height: MediaQuery.of(context).size.height,
          color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Respondent Video Stream',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          width: 150.0,
          height: 160.0,
          top: 21.0,
          right: 0.0,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Caller's Video Stream",
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 5.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  print('End Call');
                  // Navigator.pushAndRemoveUntil(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (BuildContext context) =>
                  //             HomeScreen.chat(active: 3)),
                  //     (_) => false);
                  Navigator.pop(context);
                  // MyNavigator.goToPageNamed(context, '/video');
                },
                child: Icon(
                  Icons.call_end,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
              ),
              FloatingActionButton(
                onPressed: () {
                  print('Mute Call');
                },
                child: Icon(Icons.mic_off),
              )
            ],
          ),
        )
      ]),
    );

    //   return Scaffold(
    //       appBar: AppBar(title: Text('My Page')),
    //       body: AspectRatio(
    //         aspectRatio: controller.value.aspectRatio,
    //         child: CameraPreview(controller),
    //       ));
  }
}

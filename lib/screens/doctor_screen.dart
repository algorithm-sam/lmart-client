import 'package:flutter/material.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'This is the doctor\'s screen',
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

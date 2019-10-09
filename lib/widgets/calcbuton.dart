import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final String keyValue;

  CalcBtn({this.keyValue});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        shape: Border.all(
          color: Colors.grey,
          width: 2.0,
          style: BorderStyle.solid,
        ),
        color: Colors.white,
        child: Text(
          keyValue,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black54,
              fontSize: 36.0,
              fontStyle: FontStyle.normal),
        ),
        onPressed: () {},
      ),
    );
  }
}

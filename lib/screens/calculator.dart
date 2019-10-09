import 'package:flutter/material.dart';
import 'package:pms/widgets/calcbuton.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String inputString = "10 + 20";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Calculator',
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.teal.withOpacity(0.30),
              child: Row(
                children: <Widget>[
                  Text(
                    inputString,
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 48.0),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: <Widget>[
                  makeBtn(
                    'C%^/',
                  ),
                  makeBtn(
                    '789*',
                  ),
                  makeBtn(
                    '456-',
                  ),
                  makeBtn(
                    '123+',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeBtn(String row) {
    List<String> token = row.split("");
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: token
            .map((e) => CalcBtn(
                  keyValue: e,
                ))
            .toList(),
      ),
    );
  }
}

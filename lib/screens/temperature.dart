import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  double input, output;
  bool fOrC;

  @override
  void initState() {
    super.initState();
    input = 0.0;
    output = 0.0;
    fOrC = true;
  }

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      title: Text('Temperature Conversion App'),
      centerTitle: true,
    );

// The text input field for taking in the temperature to convert;
    Padding inputField = Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: (str) {
          try {
            input = double.parse(str);
          } catch (e) {
            input = 0.0;
          }
        },
        decoration: InputDecoration(
          labelText:
              "Input a value in ${fOrC == false ? 'Farenheit' : 'Celcius'}",
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );

    // The widget item to change between celcius or farenheit;

    Container tempSwitch = Container(
      child: Column(
        children: <Widget>[
          Text(
            'Choose Farenheit or Celcuis',
          ),
          Row(
            children: <Widget>[
              Text(
                'F',
              ),
              Radio<bool>(
                groupValue: fOrC,
                value: false,
                onChanged: (val) {
                  setState(() {
                    fOrC = val;
                  });
                },
              ),
              Text(
                'C',
              ),
              Radio<bool>(
                groupValue: fOrC,
                value: true,
                onChanged: (val) {
                  setState(() {
                    fOrC = val;
                  });
                },
              ),
            ],
          ),
          // Switch(
          //   value: this.fOrC,
          //   onChanged: (e) {
          //     setState(() {
          //       fOrC = !fOrC;
          //     });
          //   },
          // ),

          // Checkbox(
          //   value: fOrC,
          //   onChanged: (e) {
          //     setState(() {
          //       fOrC = !fOrC;
          //     });
          //   },
          // ),
        ],
      ),
    );

    Container calcBtn = Container(
      child: RaisedButton(
        child: Text('Calculate'),
        color: Colors.teal,
        textColor: Colors.white,
        onPressed: () {
          setState(() {
            fOrC
                ? output = (input * 9 / 5) + 32
                : output = (5 / 9) * (input - 32);
          });

          AlertDialog dialog = AlertDialog(
            content: fOrC
                ? Text(
                    "${input.toStringAsFixed(3)} C : ${output.toStringAsFixed(3)} F")
                : Text("$input F : $output C"),
          );

          showDialog(child: dialog, context: context);
        },
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[inputField, tempSwitch, calcBtn],
          ),
        ),
      ),
    );
  }
}

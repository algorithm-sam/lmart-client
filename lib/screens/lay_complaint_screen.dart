import 'package:flutter/material.dart';

class LayComplaintScreen extends StatefulWidget {
  @override
  _LayComplaintScreenState createState() => _LayComplaintScreenState();
}

class _LayComplaintScreenState extends State<LayComplaintScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            TextFormField(
              decoration: InputDecoration(
                hasFloatingPlaceholder: true,
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5.0),
                ),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/logo.png')),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        prefixIcon: Icon(Icons.supervised_user_circle),
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 15.0),
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5.0),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Remember Me?',
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Theme.of(context).primaryColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 50.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a Snackbar.

                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      CircularProgressIndicator(),
                                      Text('Logging you in...')
                                    ],
                                  ),
                                );
                              });

                          Navigator.pushNamedAndRemoveUntil(
                              context, '/home', (_) => false);
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('New User?'),
                          FlatButton(
                            child: Text('Create an account',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                )),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, '/register');
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

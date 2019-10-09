import 'package:flutter/material.dart';
import 'package:pms/screens/new_homescreen.dart';
import 'package:pms/utils/my_navigator.dart';
import 'package:pms/screens/videocall_screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<dynamic> patient = [];
  @override
  Widget build(BuildContext context) {
    return patient?.length > 0 ? displayPatient() : noPatient();
  }

  fetchPatients() {
    // widget.showFab(true);
    setState(() {
      this.patient = [
        'Hey There',
        'Ohidoa Oluwatobi Samuel',
        'This is Nigeria',
        'Hey there this is it',
        'Baba at the top',
        'Commot for here',
        'You don fuck up',
        'Hey There',
        'Ohidoa Oluwatobi Samuel',
        'This is Nigeria',
        'Hey there this is it',
        'Baba at the top',
        'Commot for here',
        'You don fuck up'
      ];
    });
  }

  Widget displayPatient() {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: patient?.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              elevation: 8.0,
              margin: new EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 6.0,
              ),
              child: new Container(
                // decoration: BoxDecoration(color: Colors.black),
                padding: new EdgeInsets.symmetric(vertical: 10.0),
                child: new ListTile(
                    onTap: () {
                      //  MyNavigator.goToPage(context, VideoCallScreen());
                      Navigator.push(context, MaterialPageRoute<void>(
                        builder: (BuildContext context) {
                          return VideoCallScreen();
                        },
                      ));
                      // Navigator.pushAndRemoveUntil(context,
                      //      (_) => false);
                    },
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Container(
                      padding: EdgeInsets.only(right: 12.0),
                      decoration: new BoxDecoration(
                          border: new Border(
                              right: new BorderSide(
                                  width: 1.0, color: Colors.black))),
                      child: Icon(Icons.supervised_user_circle,
                          color: Colors.black),
                    ),
                    title: Text(
                      patient[index],
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

                    trailing:
                        Icon(Icons.call, color: Colors.black, size: 20.0)),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget noPatient() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/no_data.png',
                // color: Colors.black,
                height: 250.0,
                // color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Sorry There are no patient yet, Try Adding One',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: FloatingActionButton.extended(
                label: Text(
                  'Add Patient',
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    fetchPatients();
    super.initState();
  }
}

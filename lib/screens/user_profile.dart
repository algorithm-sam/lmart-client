import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({Key key}) : super(key: key);

  Widget _buildCard() => Card(
        elevation: 0,
        child: Column(
          children: [
            ListTile(
              // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              title: Text('Jane Doe',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  )),
              leading: Icon(
                Icons.supervised_user_circle,
                color: Colors.blue[500],
              ),
            ),
            Divider(),
            ListTile(
              // 2081270525,
              // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              title: Text('(408) 555-1212',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  )),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            Divider(),
            ListTile(
              // contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              title: Text(
                'costa@example.com',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(
                .35,
              ),
            ),
          ),
          _buildCard(),
          Container(
            padding: EdgeInsets.only(bottom: 25.0),
            child: FloatingActionButton.extended(
              label: Text(
                'Edit Profile',
              ),
              onPressed: () {
                print('Pressed');
              },
              icon: Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }
}

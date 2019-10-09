import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:pms/screens/chat_screen.dart';
import 'package:pms/screens/doctor_screen.dart';
import 'package:pms/screens/patient_home.dart';
import 'package:pms/screens/patients_complaint_screen.dart';
import 'package:pms/screens/relative_screen.dart';
import 'package:pms/screens/user_profile.dart';
import 'package:pms/widgets/bottom_nav_bar.dart';

import 'lay_complaint_screen.dart';

class HomeScreen extends StatefulWidget {
  // final List<CameraDescription> cameras;
  // HomeScreen({Key key, @required this.cameras}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _active = 0;
  var _activeTitle;
  var _target_screen = 'Profile';
  // final List<Widget> pages = [];
  // admin : doctors,

  @override
  Widget build(BuildContext context) {
    var _title = 'Dashboard';
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          _title,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: new Bottom_nav_bar(
        active: _active,
        onChanged: _handleNavigationChange,
        role: 'doctor',
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: _buildView(
          _target_screen,
        ),
      ),
    );
  }

  void _handleNavigationChange(int value, String target) {
    setState(() {
      _active = value;
      _target_screen = target;
    });
  }

  Widget _buildView(String _screen) {
    switch (_screen) {
      case 'Profile':
        return UserProfile();
        break;
      case 'Relatives':
        return RelativeScreen();
        break;

      case 'Doctor':
        return DoctorScreen();
        break;

      case 'Patients':
        return PatientsHomeScreen();
        break;

      case 'Chat':
        return ChatScreen();
        break;

      case 'Lay Complaint':
        return LayComplaintScreen();
        break;

      case 'Complaints':
        return ComplaintsScreen();
        break;
      default:
        return Container(
          child: Text(
            'Can\'t find that bitch',
          ),
        );
    }
  }

  showFloatActionBotton(String _screen) {
    return FloatingActionButton(
      onPressed: () {
        openPage(_target_screen);
      },
      child: Icon(
        Icons.add,
      ),
    );
  }

  void openPage(String target_screen) {
    print(target_screen);
  }
}

import 'package:flutter/material.dart';

class Bottom_nav_bar extends StatefulWidget {
  int active = 0;
  final onChanged;
  final String role;
  Bottom_nav_bar({Key key, this.active, this.onChanged, this.role = 'doctor'})
      : super(key: key);
  @override
  Bottom_nav_bar_State createState() => Bottom_nav_bar_State();
}

class Bottom_nav_bar_State extends State<Bottom_nav_bar> {
  Map<String, List<Map<String, Widget>>> roles = {
    'admin': [
      {'Profile': Icon(Icons.verified_user)},
      {'Doctors': Icon(Icons.verified_user)},
      {'Patients': Icon(Icons.pregnant_woman)},
      {'Relatives': Icon(Icons.supervised_user_circle)}
    ],
    'doctor': [
      {'Profile': Icon(Icons.verified_user)},
      {'Patients': Icon(Icons.pregnant_woman)},
      {'Complaints': Icon(Icons.event_note)},
      {'Chat': Icon(Icons.perm_phone_msg)}
    ],
    'relative': [
      {'Profile': Icon(Icons.verified_user)},
      {'Relatives': Icon(Icons.pregnant_woman)},
      {'Chat': Icon(Icons.perm_phone_msg)}
    ],
    'patient': [
      {'Profile': Icon(Icons.verified_user)},
      {'Lay Complaint': Icon(Icons.note_add)},
      {'Profile': Icon(Icons.verified_user)},
      {'Chat': Icon(Icons.verified_user)}
    ],
  };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: buildBottomNavigation(),
      onTap: _onBottomNavTapped,
      currentIndex: widget.active,
    );
  }

  List<BottomNavigationBarItem> buildBottomNavigation() {
    return roles[widget.role].map((f) {
      return BottomNavigationBarItem(
        icon: f.values.first,
        title: Text(
          f.keys.first,
        ),
      );
    }).toList();
    //TODO: Make the bottom navbar dynamic;
    // return const <BottomNavigationBarItem>[
    //   BottomNavigationBarItem(
    //     icon: Icon(
    //       Icons.verified_user,
    //     ),
    //     title: Text(
    //       'Profile',
    //     ),
    //   ),
    //   BottomNavigationBarItem(
    //     icon: Icon(
    //       Icons.pregnant_woman,
    //     ),
    //     title: Text(
    //       'Patients',
    //     ),
    //   ),
    //   BottomNavigationBarItem(
    //     icon: Icon(
    //       Icons.event_note,
    //     ),
    //     title: Text(
    //       'Complaints',
    //     ),
    //   ),
    //   BottomNavigationBarItem(
    //     icon: Icon(Icons.perm_phone_msg),
    //     // Icons.create
    //     title: Text(
    //       'Chat',
    //     ),
    //   )
    // ];
  }

  _onBottomNavTapped(int value) {
    setState(() {
      widget.active = value;
      widget.onChanged(value, roles[widget.role][value].keys.first);
    });
  }
}

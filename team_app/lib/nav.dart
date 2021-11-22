import 'package:flutter/material.dart';

import 'package:team_app/controllers/deal_controller.dart';
import 'package:team_app/deal_page.dart';
import 'package:team_app/profile.dart';
import 'package:team_app/around_you.dart';

class Nav extends StatefulWidget {
  final DealController controller;
  const Nav({Key? key, required this.controller}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  int dealNoti = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        iconSize: 30.0,
        selectedFontSize: 14.0,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              child: Icon(Icons.home),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DealPage()));
              },
            ),
            label: 'Home',
            backgroundColor: Colors.deepPurple[900],
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.near_me),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LocationPage()));
                }),
            label: 'Around You',
            backgroundColor: Colors.deepPurple[900],
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                child: Icon(Icons.person),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                }),
            label: 'Profile',
            backgroundColor: Colors.deepPurple[900],
          ),
          BottomNavigationBarItem(
            icon: InkWell(child: Icon(Icons.message), onTap: () {}),
            label: 'Message',
            backgroundColor: Colors.deepPurple[900],
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Widget buildCustomBadge({required int counter, required Icon child}) {
    final text = counter.toString();

    return Stack(
      children: [
        child,
        Positioned(
          top: -3,
          right: -2,
          child: CircleAvatar(
            backgroundColor: Colors.red[600],
            radius: 10,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:team_app/favorite_page.dart';
import 'package:team_app/firstpage.dart';
import 'package:team_app/screens/chat_screen.dart';
import 'around_you.dart';
import 'controllers/deal_controller.dart';
import 'deal_page.dart';
import 'model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'services/deal_services.dart';

// var assetImage = AssetImage('image/profile.png');
// var image = Image(
//   image: assetImage,
// );

class ProfilePage extends StatefulWidget {
  var controller;
  var service = FirebaseServices();

  DealPage() {
    controller = DealController(service);
  }

  @override
  _ProfilePageState createState() => _ProfilePageState(this.controller);
}

class _ProfilePageState extends State<ProfilePage> {
  String? _formData = 'Please enter username';
  // final UserData users;
  int _selectedIndex = 0;

  var controller;

  _ProfilePageState(this.controller);

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        /*FirebaseFirestore.instance.collection.snapshot('group_users')*/
        FirebaseFirestore.instance.collection('group_users');
    return StreamBuilder<QuerySnapshot>(
        /*บอกว่าให้สตรีมข้อมูลอะไรมาใส่*/
        stream: users.snapshots(),
        /*สร้าง*/
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          /*เป็นการเช็คคนละเรื่อง ทำพร้อมกันได้ AND(IF)*/
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }
          /*ถ้าต่อ firebase ได้แล้วจะไป Scaffold*/
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.deepPurple[900],
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              actions: [
                PopupMenuButton(
                    icon: Icon(Icons.settings),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('Notifications'),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text('Change Password'),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text('Location'),
                            value: 3,
                          ),
                          PopupMenuItem(
                            child: Text('Privacy Policy'),
                            value: 4,
                          ),
                          PopupMenuItem(
                            child: Text('Terms of service'),
                            value: 5,
                          ),
                        ]),
                SizedBox(
                  width: 12.0,
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('image/profile.png'))),
                            alignment: Alignment.topCenter,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: () async {
                                  var response = await Navigator.pushNamed(
                                      context, '/editProfile');

                                  if (response != null &&
                                      !response.toString().isEmpty) {
                                    setState(() {
                                      _formData = response.toString();
                                    });
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple.shade600,
                                  onPrimary: Colors.white,
                                ),
                                child: Text('Edit Profile')),
                          ),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Full Name',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  Text(
                                    'fullname',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              )),
                          Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                  ),
                                  Text(
                                    'Phone',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                  ),
                                  Text(
                                    'phoneNumber',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                ),
                                Text(
                                  'email',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                ),
                                Text(
                                  'age',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                ),
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                ),
                                Text(
                                  'gender',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Card(
                              child: ListTile(
                                onTap: () {
                                  Navigator.pushNamed(context, '/historydeal');
                                },
                                title: Text(
                                  'History Deal',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                leading: Icon(Icons.history),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Card(
                              child: ListTile(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FavoritePage()));
                                },
                                title: Text(
                                  'Favorite Deal',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                leading: Icon(Icons.favorite),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Card(
                              child: ListTile(
                                onTap: () {},
                                title: Text(
                                  'Help Center',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                leading: Icon(Icons.help),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            child: Card(
                              child: ListTile(
                                onTap: () {},
                                title: Text(
                                  'Q&A',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38),
                                ),
                                leading: Icon(Icons.question_answer),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                              child: Text('Log Out'),
                              onPressed: () async {
                                await FirebaseAuth.instance.signOut();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.deepPurple.shade600,
                                  onPrimary: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              iconSize: 30.0,
              selectedFontSize: 14.0,
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.deepPurple[900],
                  icon: InkWell(
                    child: Icon(Icons.home, color: Colors.white),
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => DealPage()));
                    },
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      child: Icon(Icons.near_me, color: Colors.white),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LocationPage()));
                      }),
                  label: 'Around You',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      child: Icon(Icons.person, color: Colors.white),
                      onTap: () {}),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: InkWell(
                      child: Icon(Icons.message, color: Colors.white),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatScreen()));
                      }),
                  label: 'Message',
                ),
              ],
              onTap: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          );
        });
  }
}

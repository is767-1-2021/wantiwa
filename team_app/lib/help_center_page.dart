import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:team_app/profile.dart';

class HelpCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profile2Page()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'Help Center',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'วิธีการตั้งค่า Location',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.room),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'วิธีการ Join Deal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.group),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'วิธีการสร้าง Deal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.add_box),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'วิธีการยกเลิก Deal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.person_remove_alt_1),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'ทำความรู้จักแต่ละเมนูบนแอปพลิเคชัน WeDeal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.apps),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'ช่องทางการติดตามข่าวสารของ WeDeal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.store),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(2.0),
            ),
            Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                  'ช่องทางในการติดต่อ WeDeal',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black38),
                ),
                leading: Icon(Icons.contact_support),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

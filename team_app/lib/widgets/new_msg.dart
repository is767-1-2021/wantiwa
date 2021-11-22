import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  /*ตัวแปรและ controller ที่ต้องใช้*/
  var _enteredMsg = '';
  var msgCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              /*เซต controller เพื่อให้กดส่งแล้ว ข้อความใน field เป็น empty*/
              controller: msgCon,
              onChanged: (val) {
                setState(() {
                  _enteredMsg = val;
                });
              },
              decoration: InputDecoration(
                labelText: 'Message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          IconButton(
            color: Theme.of(context).primaryColor,
            onPressed: _enteredMsg.trim().isEmpty
                ? null
                : () async {
                    FocusScope.of(context).unfocus();
                    FirebaseAuth _auth = FirebaseAuth.instance;
                    /*ใครที่ Login เข้ามาดู auth.currentUser*/
                    var userMsgdata = await FirebaseFirestore.instance
                        .collection('group_users')
                        .doc(_auth.currentUser!.uid)
                        .get();
                    FirebaseFirestore.instance
                        .collection('group_chats')
                        .doc()
                        .set({
                      'text': _enteredMsg,
                      'createdAt': Timestamp.now(),
                      'userId': _auth.currentUser!.uid,
                      'username': userMsgdata['username'],
                      'userImage': userMsgdata['userImage'],
                    });
                    msgCon.clear();
                    setState(() {
                      _enteredMsg = '';
                    });
                  },
            icon: Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}

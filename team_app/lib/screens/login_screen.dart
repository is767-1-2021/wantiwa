import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:team_app/deal_page.dart';
import 'package:team_app/screens/chat_screen.dart';
import 'package:team_app/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _emailString = '';
  var _passString = '';

  var _isLoading = false;

  /*สร้าง form ให้เก็บค่าที่สมัคร*/
  final _formKey = GlobalKey<FormState>();

  /*Login to Firebase*/
  void _submit() async {
    /*เซตตัวแปร _isValid แล้วก็เขียน condition ว่าอะไรคือ _isValid*/
    final _isValid = _formKey.currentState!.validate();

    /*เอา keyboard ออก*/
    FocusScope.of(context).unfocus();

    /*conditon if isValid is false*/
    if (!_isValid) {
      return;}

    _formKey.currentState!.save();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DealPage()));

    /*set เวลากดปุ่ม signUp จะให้ขึ้นเป็น CircularProgressIndicator*/
    setState(() {
      _isLoading = true;
    });

    /*login เข้า firebaseAuth*/
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: _emailString, password: _passString);}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 120.0,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "WeDeal",
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansThai',
                      fontWeight: FontWeight.w300,
                      fontSize: 40,
                      color: Colors.deepPurple.shade900),
                ),

                    SizedBox(
                      height: 30,
                    ),
                    /*กรอก Email & Password*/
                    TextFormField(
                      /*สร้าง value เก็บค่าที่กรอกลงไป*/
                      validator: (val) {
                        /*|| == OR*/
                        /*!val.contains == if val not contains*/
                        if (val!.isEmpty || !val.contains('@')) {
                          return 'Please enter a valid Email';
                        }
                        /*value if true*/
                        return null;
                      },
                      onSaved: (val) {
                        _emailString = val!;
                      },
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      decoration: InputDecoration(fillColor: Colors.white10, filled: true,
                        labelText: 'Email',
                        hintText: 'Please input your Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.email,
                        color: Colors.black87,
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(
                      validator: (val) {
                        /*if value have less that 6 characters*/
                        if (val!.isEmpty || val.length < 3) {
                          return 'Password must be at least 6 units';
                        }
                        /*value if true*/
                        return null;
                      },
                      onSaved: (val) {
                        _passString = val!;
                      },
                      /*ซ๋อน password*/
                      obscureText: true,
                      autocorrect: false,
                      decoration: InputDecoration(fillColor: Colors.white10, filled: true,
                        labelText: 'Password',
                        hintText: 'Please input your Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        
                        prefixIcon: Icon(Icons.lock,
                        color: Colors.black87),
                        suffixIcon: Icon(Icons.visibility_off_outlined,
                        color: Colors.black87),
                
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                      Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.black45,
                          textStyle: const TextStyle(
                              fontSize: 14, color: Colors.black54)),
                      onPressed: () {},
                      child: const Text("Forgot Password?"),
                    ),
                  ],
                ),
                SizedBox(height: 5),

                    /*if _isLoading = true >> Circular , if false ให้ทำต่อ*/
                    _isLoading
                        ? CircularProgressIndicator()
                        : Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple[700],
                        ),
                              child: Text('Login',
                              style: TextStyle(
                              fontSize: 20,)),

                              onPressed: _submit,
                            ),
                          ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            primary: Colors.deepPurple,
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14, color: Colors.deepPurple),
                                ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        },
                        child: const Text("Sign Up"),
                      ),
                    ],
                  ),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "- Or -",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Sign In with",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //ใส่รูป
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("image/facebook.png"),
                            )),
                          ),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("image/google.png"),
                            )),
                          ),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("image/line.png"),
                            )),
                          ),
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("image/twitter.png"),
                            )),
                          )],
                ),
              ]),
              ],
          ),
        ),
    ))
      );
}}
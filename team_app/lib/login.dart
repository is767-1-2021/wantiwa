import 'package:flutter/material.dart';
import 'package:team_app/signup.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (backgroundColor: Colors.orange,
        title: Text(""),),

                 body: Container(
        child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Form(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WeDeal",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:30,
                              color: Colors.black54),),
                              SizedBox(height:20,),
                              Text("",
                              style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize:20,
                              color: Colors.black87),),
                          SizedBox(
                            height:20),
                        
                          //Text("Email", style: TextStyle(fontSize: 16)),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                      hintText: 'Please input your Email',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Text("Password", style: TextStyle(fontSize: 16)),
                  TextFormField(obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock_outlined),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                      labelText: 'Password',
                      hintText: 'Please input your Password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)))),
                        SizedBox(
                          height:5
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[ 
                            TextButton(
                            style: TextButton.styleFrom(
                            primary: Colors.black45,
                            textStyle:const TextStyle(fontSize:14, color: Colors.black54)
                            ), onPressed: () {},
                            child: const Text("Forgot Password?"),),
                          ],
                        ), 
                        SizedBox(
                          height:10
                        ),
                                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo.shade900,
                      ),
                      child: Text("Login", style: TextStyle(fontSize: 20,)),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                          height:20
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[ 
                            Text("Don't have an account?",
                            style: TextStyle (
                              fontSize:16, 
                              color: Colors.black54),),

                            TextButton(
                            style: TextButton.styleFrom(
                            primary: Colors.blueAccent,
                            textStyle:const TextStyle(fontSize:14, color: Colors.blueAccent)
                            ), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));},
                            child: const Text("Sign Up"),),
                            ],
                        ), 
                        SizedBox(height: 40,),
                            Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[ 
                            Text("- Or -",
                            style: TextStyle (
                              fontSize:14, 
                              color: Colors.black54),),
                              SizedBox(
                          height:10),
                          Text("Sign In with",
                          style: TextStyle (
                            fontSize:14, 
                              color: Colors.black54),), 
                              SizedBox(height: 30,),
                          //ใส่รูป
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [ 
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage("image/facebook.png"),
                  )
                ),
              ),
                          Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage("image/google.png"),
                  )
                ),
              ),

              Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage("image/line.png"),
                  )
                ),
              ),

              Container(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage("image/twitter.png"),
                  )
                ),
              ),
                          ],
                        ), 
                          
                        ]),
                        ],
                        ),),))));}
}

import 'package:flutter/material.dart';
import 'package:team_app/login.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("SignUp"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                              SizedBox(height:30,),
                              
              
                  //Text("Name", style: TextStyle(fontSize: 14)),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_add_outlined),
                      labelText: 'Name',
                      hintText: 'Please input your Name',
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
                  //Text("Phone Number", style: TextStyle(fontSize: 14)),
                  TextFormField(decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android_outlined),
                      labelText: 'Phone Number',
                      hintText: 'Please input your Phone Number',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400))),),
                  SizedBox(
                    height: 10,
                  ),
                  //Text("Email", style: TextStyle(fontSize: 14)),
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
                  //Text("Password", style: TextStyle(fontSize: 14)),
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
                    height: 10,
                  ),
                  //Text("Confirm Password", style: TextStyle(fontSize: 14)),
                  TextFormField(obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                      labelText: 'Confirm Password',
                      hintText: 'Please input your Confirm Password',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade400)))),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo.shade900
                      ),
                      child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                      onPressed: () {},
                    ),
                  ),
                SizedBox(
                          height:10
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[ 
                            Text("Already have an account?",
                            style: TextStyle (
                              fontSize:16, 
                              color: Colors.black54),),

                            TextButton(
                            style: TextButton.styleFrom(
                            primary: Colors.blueAccent,
                            textStyle:const TextStyle(fontSize:14, color: Colors.blueAccent)
                            ), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));},
                            child: const Text("Sign In"),),],
                            ),
                            SizedBox(
                          height:20
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[ 
                            Text("- Or -",
                            style: TextStyle (
                              fontSize:14, 
                              color: Colors.black54),),
                              SizedBox(
                          height:10),
                          Text("Sign Up with",
                          style: TextStyle (
                            fontSize:14, 
                              color: Colors.black54),),
                              SizedBox(height: 20,),
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
                          ])]
                          
                        ),
                        ],
              
        )))),
          ),
        );
  }
}

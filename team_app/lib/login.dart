import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
      (backgroundColor: Colors.orange,
        title: Text("Login"),
      ),
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
                          height:10
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[ 
                            Text("Forgot Password?",
                            style: TextStyle (
                              fontSize:14, 
                              color: Colors.black54),),
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
                          height:80
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[ 
                            Text("or continue with",
                            style: TextStyle (
                              fontSize:18, 
                              color: Colors.black54),),
                          ],
                        ), 
                        ],
                      ),
                ),),),),);
}
}

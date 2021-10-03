import 'package:flutter/material.dart';
import 'package:midterm_app/login.dart';

import 'blankpage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text("Sign Up"),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(
          builder: (context) => BlankPage()));}, icon: Icon(Icons.local_activity_outlined))
      ]),
      body: MyCustomForm());
    
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({ Key? key }) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState> ();
  String? _name;
  String? _phone;
  String? _email;
  String? _password;
  String? _confirm;
  
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      //child : Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          //child: Form(
            child: SingleChildScrollView(
              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //Text(
                            //"Midterm",
                            //style: TextStyle(
                              //fontWeight: FontWeight.w600,
                              //fontSize:30,
                              //color: Colors.black54),),
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _name = value;
                  }),

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
                                BorderSide(color: Colors.grey.shade400))),
                                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Phone Number';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _phone = value;
                  }),
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _email = value;
                  }),
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
                                BorderSide(color: Colors.grey.shade400))),
                                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Password';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _password = value;
                  }),
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
                                BorderSide(color: Colors.grey.shade400))),
                                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Confirm Password';
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _confirm = value;
                  }),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink.shade200
                      ),
                      child: Text("Sign Up", style: TextStyle(fontSize: 18)),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();

                          ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(
                            content: Text('Yeahhh = $_name $_phone $_email $_password $_confirm'),
                          ));
                        }
                      },
                    )
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
                            primary: Colors.pinkAccent,
                            textStyle:const TextStyle(fontSize:16, color: Colors.black54)
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
              
        ))));    
  }
}
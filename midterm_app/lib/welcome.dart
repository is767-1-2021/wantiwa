import 'package:flutter/material.dart';
import 'package:midterm_app/model/form_model.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class WelcomePage extends StatefulWidget {
  
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? _formData = 'Please click to login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
          actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(
          builder: (context) => HomePage()));}, icon: Icon(Icons.favorite_outline))
        ]
          
        ),

      body: Center(
        child: Column(
          children: [ 
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Consumer<FormModel>(
              builder: (context, form, child) {
                return Text('${form.email} ${form.password}');
              },
            ),
          ), 
            ElevatedButton(
          onPressed: ()  {
            Navigator.pushNamed(context, '/1');

          },
          child: Text('Welcome Back Please Login'),
            ),
                       ])));
  }
}

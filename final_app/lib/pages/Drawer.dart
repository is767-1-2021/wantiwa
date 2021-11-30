import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer();

  static const List<Type> myType = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
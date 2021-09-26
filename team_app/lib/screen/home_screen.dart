import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  elevation: 8,
  leading: IconButton
  (icon: Icon(Icons.menu),
  color: Colors.white,
  onPressed: () {},
  ),
  title: Text( 
    'Inbox',
    style: TextStyle(
      color: Colors.white,
     ),
  ),
  actions: <Widget>[ 
    IconButton(icon: Icon(Icons.search),
    onPressed: () {},
    ),
    ],
),
//ติด
    body: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
    return Container(
  padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
  ),
  child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColorDark
              ),
              //shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                )
              ] ),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("image/1BANG.png"),
              )
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            padding: EdgeInsets.only(left: 20,),
          child:Column(
          children: <Widget>[
          Row(  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('BANG', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),),
            Text('10:30am',
            style: TextStyle( 
              fontSize: 11,
              fontWeight: FontWeight.w300,
              color: Colors.black54,
            ),),
          ],),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
            'โปรนี้ดีจังเลย ดีลลลลลล',
            style: TextStyle (
              fontSize: 13,
              color: Colors.black54,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          ),),
          //2
       
          ],),)]
   ));}));}} 
import 'package:final_app/pages/AddExpense.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:table_calendar/table_calendar.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CalendarAppBar(
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.lunch_dining, color: Colors.blue.shade600,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Hamburger', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.blue.shade600),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("-200", style: TextStyle(color: Colors.red,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.blue.shade600, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ),
                        Container(
                      margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.book,color: Colors.white,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Book', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("-500", style: TextStyle(color: Colors.red,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.grey.shade200, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.local_taxi, color: Colors.blue.shade600,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Taxi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.blue.shade600,),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("-150", style: TextStyle(color: Colors.red,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.blue.shade600, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.loyalty, color: Colors.white,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Shirt', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("-200", style: TextStyle(color: Colors.red,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.grey.shade200, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.brunch_dining, color: Colors.blue.shade600,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Revenue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.blue.shade600,),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("+30,000", style: TextStyle(color: Colors.green,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.blue.shade600, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom:20),
                      padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(  
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget> [  
                            Row(  
                              children: <Widget>[  
                                Icon(Icons.wine_bar,color: Colors.white,),
                                SizedBox( 
                                  width: 10,
                                ),
                                Text('Dinner', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white),)
              
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,  
                              children: <Widget> [ 
                                Text("-1000", style: TextStyle(color: Colors.red,fontSize:16)),
                                Text("THB", style: TextStyle(color: Colors.grey.shade200, fontSize:16),)
                              ],
                            )
                          ]
                        ),
                        ), 
                  ]))),
    ); 
  }
}




import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  
  @override
  _MainActivityState createState() => new _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {

  final List<String>listof=["Burger King","Free Mobile","Revenue", "Distrib", "Jap", "H&M"];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar( 
        title: new Text(  
          'List View Builder',
          style: new TextStyle(fontSize:19.0),
        ),
        backgroundColor: Colors.deepPurple,

        actions: <Widget> [ 
          new IconButton(  
            icon: new Icon(Icons.add),
            onPressed: () =>debugPrint("Add")),

          new IconButton( 
            icon: new Icon(Icons.search),
            onPressed: () =>debugPrint("Search"))
          
          
        ],
      ),
      body: new Container( 
        //child: new ListView.builder(itemBuilder: (_,int index) =>listDataItem//(this.listof)[index]),
                                    //itemCount: this.listof.length,
                                    ),
      );
    
  }
}
class listDataItem extends StatelessWidget {  

  String itemName;

  listDataItem (this.itemName);

@override 
Widget build(BuildContext context) { 
  return new Card (  
    child: new Row(  
     children: <Widget>[  

       new CircleAvatar(  
         child: new Text(itemName[0]),
       ),

       new Text(itemName,style: TextStyle(fontSize: 20.0),)

     ] 
    )
  );
}
}
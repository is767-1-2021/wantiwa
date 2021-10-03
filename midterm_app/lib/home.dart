import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{ 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar( 
        title: Text('Home Page'),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(
          builder: (context) => HomePage()));}, icon: Icon(Icons.home_outlined))
        ]
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) { 
          return InkWell(
            onTap: (){ 
              Navigator.pushNamed(context, '/${index+1}');
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar( 
              //  content: Text('Tap at $index'),
              // ));
            },
            child: Container(
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(  
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(  
              child: Text(
                'Page ${index+1}',
                style: Theme.of(context).textTheme.headline6,
          ),),),);
        }),
      ),
    );
  }
}

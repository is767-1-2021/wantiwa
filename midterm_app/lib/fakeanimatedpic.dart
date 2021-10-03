import 'package:flutter/material.dart';

import 'welcome.dart';

class FakeAnimatedPicPage extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Faked Animated Pic'),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(
          builder: (context) => WelcomePage()));}, icon: Icon(Icons.pets_outlined))
        ]
      ),
      body: GestureDetector(
        onTap: (){ 
          Navigator.push(context,
           MaterialPageRoute( 
            builder: (context) => MovedChicken()),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ 
            Hero(
              tag: 'Chicken',
              child: Image.asset( 
                'image/JJE.png',
                width: 120,
              ),
            ),
          ],
        ),
      ),
    );
 }
}

 class MovedChicken extends StatelessWidget { 
   @override 
   Widget build(BuildContext context) { 
     return Scaffold( 
       body: GestureDetector(
         onTap: (){ 
           Navigator.pop(context);
         },
         child: Center(
           child: Hero(
             tag: 'Chicken',
             child: Image.asset(
               'image/JJE.png',
               width:120,
            ), ), ),
       ),
     );
   }
 }   
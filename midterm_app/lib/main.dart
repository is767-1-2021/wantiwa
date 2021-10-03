import 'package:flutter/material.dart';
import 'package:midterm_app/model/form_model.dart';
import 'package:provider/provider.dart';

import 'blankpage.dart';
import 'fakeanimatedpic.dart';
import 'home.dart';
import 'login.dart';
import 'signup.dart';
import 'welcome.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
ChangeNotifierProvider(
      create: (context) => FormModel(),
     ),
   ],
      child: MyApp(),
  )
);
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wantiwa Midterm_App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.brown),
        )
      ),
      initialRoute: '/4',
      routes: <String, WidgetBuilder> {
        '/1': (context) => LoginPage(),
        '/2': (context) => SignUpPage(), 
        '/3': (context) => BlankPage(),
        '/4': (context) => HomePage(),
        '/5': (context) => FakeAnimatedPicPage(),
        '/6': (context) => WelcomePage(),
    

      }
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

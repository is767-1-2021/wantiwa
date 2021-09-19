// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:team_app/login.dart';
import 'package:team_app/signup.dart';

void main () {
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
)); 
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "WeDeal",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize:35,
                  color: Colors.brown,
                ),),

              Container(
                height: MediaQuery.of(context).size.height /2,
                decoration: BoxDecoration(
                  image: DecorationImage( 
                    image: AssetImage("image/shopping.png")
                  )
                ),
              ),

                Column(  
                  children: <Widget>[ 
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.brown
                        ),
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Text( 
                      "LOGIN",
                      style: TextStyle( 
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown
                    ),
                      ),
                    ),
                  SizedBox(height:10),
                  MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: (){ 
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    color: Color(0xFFF3E2E7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text(
                      "SIGN UP",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 18 
                      ),
                    )
                    
                  )
                  ]
                )
            ]
        ),
          ),
        )
    );
}
}

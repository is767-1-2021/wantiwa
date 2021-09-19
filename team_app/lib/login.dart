import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget> [ 
                    Text("LOGIN",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.brown),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[ 
                      inputFile(label: "Email"),
                      inputFile(label: "Password", obscureText: true)
                    ],
                  ),
                ),

                Padding(padding:
                EdgeInsets.symmetric(horizontal: 35),
                  child: MaterialButton(
                  minWidth: double.infinity,
                    height: 40,
                   onPressed: () {},
                    color: Color(0xFFF3E2E7),
                    elevation: 0,
                  
                    child: Text( 
                      "Login", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.brown,
                      
                ),)
                      ),
            ),    
          ]
        )       
      ),
          ])));
  }
}
Widget inputFile({label, obscureText = false})
{ 
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[ 
      Text( 
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal:10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)
         )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
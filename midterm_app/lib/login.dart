import 'package:flutter/material.dart';
import 'package:midterm_app/model/form_model.dart';
import 'package:midterm_app/signup.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: const Text("Login"),
        actions: [
          IconButton(onPressed: (){Navigator.push(context,MaterialPageRoute(
          builder: (context) => SignUpPage()));
}, icon: Icon(Icons.app_registration_outlined))
        ]),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      //child: Container(
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              //child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   children: <Widget>[
            //          Text(
            //            "Midterm",
            //            style: TextStyle(
            //                fontWeight: FontWeight.w600,
             //               fontSize: 30,
             //               color: Colors.black54),
             //         ),
                      SizedBox(
                        height: 20,
                      ),
             //         Text(
             //           "",
             //           style: TextStyle(
             //               fontWeight: FontWeight.w600,
              //              fontSize: 20,
              //              color: Colors.black87),
               //       ),
               //       SizedBox(height: 20),

                      //Text("Email", style: TextStyle(fontSize: 16)),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              labelText: 'Email',
                              hintText: 'Please input your Email',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400),
                              ),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }

                            return null;
                          },
                          onSaved: (value) {
                            _email = value;
                          },
                          initialValue: context.read<FormModel>().email,
                          ),
                SizedBox(
                  height: 10,),
                      //Text("Password", style: TextStyle(fontSize: 16)),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_clock_outlined),
                          suffixIcon: Icon(Icons.visibility_off_outlined),
                          labelText: 'Password',
                          hintText: 'Please input your Password',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade400),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Password';
                          }

                          

                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                        initialValue: context.read<FormModel>().password,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.black45,
                                textStyle: const TextStyle(
                                    fontSize: 14, color: Colors.black54)),
                            onPressed: () {},
                            child: const Text("Forgot Password?"),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                                "Or",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.black54),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                    primary: Colors.pinkAccent,
                                    textStyle: const TextStyle(
                                        fontSize: 14, color: Colors.black54)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: const Text("Sign Up"),

                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pink.shade200,
                          ),
                          child: Text("Login",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();

                      context.read<FormModel>().email = _email;
                      context.read<FormModel>().password = _password;
                            
                            Navigator.pop(context);
                          
                      
  
                      }}))]))));}
}

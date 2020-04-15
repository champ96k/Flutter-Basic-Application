import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController email= TextEditingController();
  TextEditingController pass= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[

                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                  ),
                ),

                Container(height: 10,),

                TextField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),

                Container(height: 10,),

                TextField(
                  controller: pass,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),

                Container(height: 15,),

                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ),

                Container(height: 15,),

                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
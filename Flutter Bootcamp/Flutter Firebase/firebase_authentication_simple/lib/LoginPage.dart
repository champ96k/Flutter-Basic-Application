import 'package:flutter/material.dart';

import 'SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),

                Container(height: 10,),

                TextField(
                  controller: passController,
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
                      "Login",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),

                Container(height: 15,),

                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (BuildContext context) => SignUp()));
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
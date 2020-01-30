import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class Simple extends StatefulWidget {
  @override
  _SimpleState createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {

  TextEditingController emailId = TextEditingController();
  TextEditingController password = TextEditingController();

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;



  void sign() async {
     final FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: emailId.text,
      password: password.text,
    ))
        .user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            TextField(
              controller: emailId,
              decoration: InputDecoration(
                hintText: "Enter Email",
              ),
            ),

             TextField(
              controller: password,
              decoration: InputDecoration(
                hintText: "Enter Password",
              ),
            ),


            RaisedButton(
              onPressed: () { 
                sign();
              },
              child: Text("Sign UP",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white
              ),
              ),
              color: Colors.deepPurple,
            )
          ],
        ),
      )   
    );

   }
  }
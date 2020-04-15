import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {

  final name,email;
  DashBoardPage(this.name,this.email);

  @override
  _DashBoardPageState createState() => _DashBoardPageState(this.name,this.email);
}

class _DashBoardPageState extends State<DashBoardPage> {
  var name,email;
  _DashBoardPageState(this.name,this.email);


  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  Future<void> _signOut() async {
    print("inside SignOut method");
    try {
       await _auth.signOut();
      
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("$name \n \n $email"),

            RaisedButton(
              onPressed: () {
                _signOut();
                Navigator.pop(context);
              },
              child: Text("Sign out"),
            )
          ],
        ),
      )
      
    );
  }
}
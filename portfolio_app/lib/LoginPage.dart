import 'package:flutter/material.dart';
import 'package:portfolio_app/SignUp.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  showDialogBox() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Login Successful'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('thanks for login.'),
              Text('Thank you for your business. It is our pleasure to work with you.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 140.0, bottom: 20),
                  child: Image.asset(
                    "assets/logo.png",
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 25, right: 200, top: 7),
                  child: Text(
                    "Welcome,",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                //Welcome Sign in Continue
                Padding(
                  padding: EdgeInsets.only(right: 100, top: 7),
                  child: Text(
                    "Sign in to Continue",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 35, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Username",
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 10, bottom: 15),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                MaterialButton(
                  elevation: 20,
                  height: 42,
                  minWidth: 305,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  onPressed: () {
                        showDialogBox();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF405DE6),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: SizedBox(
                    height: 1,
                    width: 300,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                MaterialButton(
                  elevation: 20,
                  height: 42,
                  minWidth: 305,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF405DE6),
                ),

                SizedBox(
                  height: 100,
                ),
                Text("Created By Champ 💙")
              ],
            ),
          ],
        ));
  }
}

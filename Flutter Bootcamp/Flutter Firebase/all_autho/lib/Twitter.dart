import 'package:flutter/material.dart';
import 'package:flutter_twitter_login/flutter_twitter_login.dart';

class Twitter extends StatefulWidget {
  @override
  _TwitterState createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {

  static final TwitterLogin twitterLogin = new TwitterLogin(
    consumerKey: 'kRM0dPgROJEaHb8yApciOsHAo',
    consumerSecret: 'fZDhp7kNmRX6A3Q09iFUDys0PBKOm10FBk4muAWP8ehgOLdOQR',
  );

   String _message = 'Logged out.';

  void _login() async {
    final TwitterLoginResult result = await twitterLogin.authorize();
    String newMessage;

    switch (result.status) {
      case TwitterLoginStatus.loggedIn:
        newMessage = 'Logged in! username: ${result.session.username}';
        break;
      case TwitterLoginStatus.cancelledByUser:
        newMessage = 'Login cancelled by user.';
        break;
      case TwitterLoginStatus.error:
        newMessage = 'Login error: ${result.errorMessage}';
        break;
    }

    setState(() {
      _message = newMessage;
    });
  }

  void _logout() async {
    await twitterLogin.logOut();

    setState(() {
      _message = 'Logged out.';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () { 
                _login();
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
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // TextEditingController email = TextEditingController();
  // TextEditingController pass = TextEditingController();

  void initiateFacebookLogin() async {
    var facebookLogin = FacebookLogin();
    var facebookLoginResult = await facebookLogin.logIn(['email']);
    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.error:
        print("Error");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.cancelledByUser:
        print("CancelledByUser");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.loggedIn:
        print("LoggedIn");
        onLoginStatusChanged(true);
        break;
    }
  }

  bool isLoggedIn = false;

  void onLoginStatusChanged(bool isLoggedIn) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: new Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 60, 110, 0),
                // padding: new EdgeInsets.only(left:10.0),
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 46.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                // margin: EdgeInsets.fromLTRB(14, 32, 180, 0),
                //   padding: new EdgeInsets.only(top:40.0),

                child: Text(
                  "Sign in to Continue!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 35.0),
              Container(
                height: 58,
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: TextFormField(
                  decoration: new InputDecoration(
                    filled: true,
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                height: 58,
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: TextFormField(
                  decoration: new InputDecoration(
                    filled: true,
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                height: 58,
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: TextFormField(
                  decoration: new InputDecoration(
                    filled: true,
                    labelText: "Email ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                height: 58,
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
                child: TextFormField(
                  decoration: new InputDecoration(
                    filled: true,
                    labelText: "Paasword",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35.0),
              MaterialButton(
                height: 52,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12)),
                onPressed: () {},
                child: Text(
                  "Sign Up ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFFff5f77),
              ),
              SizedBox(
                height: 14.0,
              ),
              MaterialButton(
                height: 52,
                minWidth: 340,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12)),
                    onPressed: () => initiateFacebookLogin(),
                child: Text(
                  "Connect with Facebook ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFF3b5998),
              ),
             
            ],
          ),
        ),
      ),
    ));
  }
}

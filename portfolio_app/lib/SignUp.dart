import 'package:flutter/material.dart';
import 'package:portfolio_app/ProfilePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String dispName = "Tushar Nikam";

  final nameobj = TextEditingController();
  final emailobj = TextEditingController();
  final mobobj = TextEditingController();
  final passobj = TextEditingController();
  final repassobj = TextEditingController();
  String txt = "";
  int count = 0;
  var col;
  myFunction() {
    for (int i = 0; i < passobj.text.length; i++) {
      bool c = ("0".compareTo(passobj.text[i]) <= 0 &&
          "9".compareTo(passobj.text[i]) >= 0);
      if (c) {
        count++;
      }
    }
    bool special = passobj.text
        .contains(new RegExp(r'[ !"#$%&()*+,-./:;<=>?@[]\^_`{|}~]'));
    setState(() {
      if (nameobj.text.contains(RegExp(r'[\d]')) || nameobj.text.isEmpty) {
        txt = "please Enter Valid name";
        col = Colors.red;
      } else if (emailobj.text.isEmpty || emailobj.text.isEmpty) {
        txt = "Plese Enter Valid Email";
        col = Colors.red;
      } else if (mobobj.text.length != 10 || mobobj.text.isEmpty) {
        txt = "Please enter Valid number";
        col = Colors.red;
      } else if (passobj.text.length < 10) {
        txt = "Password should have atleast 10 character ";
        col = Colors.red;
      } else if (count < 2) {
        txt = "Password should have 2 digits";
        col = Colors.red;
      } else if (special) {
        txt = "Password should not have any special character";
        col = Colors.red;
      } else if (repassobj.text.isEmpty || repassobj.text != passobj.text) {
        txt = "Both password should be same";
        col = Colors.red;
      } else {
        txt = "User Seccessfully Created";
        col = Colors.green;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25, right: 140, top: 40),
            child: Text(
              "Create Account,",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          //Welcome Sign in Continue
          Padding(
            padding: EdgeInsets.only(right: 140, left: 25, top: 7),
            child: Text(
              "Sign up to get started",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                right: 35.0, left: 35.0, top: 30, bottom: 7),
            child: TextFormField(
              controller: nameobj,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  labelText: "Enter Name",
                  prefixIcon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                right: 35.0, left: 35.0, top: 7, bottom: 7),
            child: TextFormField(
              controller: passobj,
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

          Padding(
            padding: const EdgeInsets.only(
                right: 35.0, left: 35.0, top: 7, bottom: 7),
            child: TextFormField(
              controller: emailobj,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  labelText: "E-mail",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                right: 35.0, left: 35.0, top: 7, bottom: 7),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: mobobj,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  labelText: "Mobile Number",
                  prefixIcon: Icon(Icons.mobile_screen_share),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                right: 35.0, left: 35.0, top: 7, bottom: 26),
            child: TextFormField(
              controller: repassobj,
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                  labelText: "Re-Enter Password",
                  prefixIcon: Icon(Icons.lock_open),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 35,right: 35),
            child: MaterialButton(
              elevation: 20,
              height: 42,
             // minWidth:60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                myFunction();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfilePage("$dispName")));
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
          ),

          SizedBox(height: 12.0),
          // Padding(
          //   padding: const EdgeInsets.only(top: 16, bottom: 16),
          //   child: SizedBox(
          //     height: 1,
          //     width: 300,
          //     child: DecoratedBox(
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.only(left: 73),
            child: Row(
              children: <Widget>[
                Text(
                  "I'am already a member,",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontSize: 14,
                  ),
                ),
                Text(
                  " Sign In",
                  style: TextStyle(
                      color: Colors.pink[800],
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 75,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 95),
            child: Text("Created By Champ 💙"),
          )
        ],
      ),
    );
  }
}

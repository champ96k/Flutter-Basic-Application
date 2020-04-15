import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text("Email:"),

                Container(
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue,
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onPressed: () {},
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
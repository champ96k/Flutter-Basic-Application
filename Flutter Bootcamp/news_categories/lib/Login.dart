import 'package:flutter/material.dart';
import 'package:news_categories/HomePage.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final barColor = const Color(0xFF4AC412);

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  var response;

  Future<List> sentdata() async {
    response = await http
        .post("http://news.raushanjha.in/flutterapi/login.php", body: {
      "username": username.text,
      "password": password.text,
    });

    print(response.body);
    if (response.body == "false\n") {
      Fluttertoast.showToast(
          msg: "Susscuss",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Fail",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Please Try Again'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Something Wrong'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
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
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 55, 110, 0),
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
              child: Text(
                "Login to Continue!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
              child: TextFormField(
                controller: username,
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
              height: 60,
              padding: EdgeInsets.only(left: 35, right: 35, bottom: 15),
              child: TextFormField(
                controller: password,
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
              height: 48,
              minWidth: 305,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {
                sentdata();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Text(
                "Login",
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
              height: 48,
              minWidth: 305,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(12)),
              onPressed: () {},
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
    );
  }
}

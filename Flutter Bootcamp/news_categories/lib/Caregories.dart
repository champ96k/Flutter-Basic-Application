import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Caregories extends StatefulWidget {
  @override
  _CaregoriesState createState() => _CaregoriesState();
}

class _CaregoriesState extends State<Caregories> {

  TextEditingController title = TextEditingController();
  
  Future<List> sentdata() async {
    final response = await http .post("http://news.raushanjha.in/flutterapi/insertcategory.php", body: {
      "name": title.text,
    });
    //print(response.body);
  }


  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Thanks for Adding Categories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Image(
                  image: AssetImage("images/pic3.png"),
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Center(
                  child: Text(
                'Close',
                style: TextStyle(
                  fontSize: 24,
                ),
              )),
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
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 42),
                child: Image(
                  height: 250,
                  width: 300,
                  image: AssetImage("images/pic2.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 30, right: 30),
                child: TextFormField(
                  controller: title,
                  decoration: InputDecoration(
                      labelText: "Title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                ),
              ),
              MaterialButton(
                height: 52,
                minWidth: 300,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12)),
                onPressed: () {
                  sentdata();
                  _neverSatisfied();
                },
                child: Text(
                  "Add Categories ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                color: Color(0xFF3b5998),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

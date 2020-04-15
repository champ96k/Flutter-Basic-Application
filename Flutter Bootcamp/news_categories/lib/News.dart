import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:http/http.dart' as http;

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  TextEditingController id = TextEditingController();
  TextEditingController title = TextEditingController();
  TextEditingController categories = TextEditingController();
  TextEditingController discription = TextEditingController();

  String date = DateTime.now().toString();

  Future<List> sentdata() async {
    final response = await http
        .post("http://news.raushanjha.in/flutterapi/insertnews.php", body: {
      "cat_id": _mySelection,
      "news_title": title.text,
      "news_description": discription.text,
      "news_date": date,
    });
    print(response.body);
  }

  var _mySelection;

  List data = List(); //edited line
  var url = "http://news.raushanjha.in/flutterapi/category";
  Future<String> getSWData() async {
    var res = await http.get(Uri.encodeFull(url));
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody;
      print(data);
    });
  }

  @override
  void initState() {
    getSWData();
    super.initState();
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Thanks for Adding News',
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
                  padding: const EdgeInsets.only(top: 36),
                  child: DropdownButton(
                    items: data.map((item) {
                      return DropdownMenuItem(
                        child: Text(item['category_name']),
                        value: item['cid'].toString(),
                      );
                    }).toList(),
                    onChanged: (newVal) {
                      setState(() {
                        _mySelection = newVal;
                      });
                    },
                    value: _mySelection,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: DatePickerTimeline(
                      DateTime.now(),
                      onDateChange: (date) {
                        print(date.toString());
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: title,
                    decoration: InputDecoration(
                        labelText: "Categories title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    controller: discription,
                    maxLines: 6,
                    decoration: InputDecoration(
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),
                MaterialButton(
                  height: 52,
                  minWidth: 340,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12)),
                  onPressed: () {
                    sentdata();
                   // _neverSatisfied();
                  },
                  child: Text(
                    "Add News ",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFFff5f77),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

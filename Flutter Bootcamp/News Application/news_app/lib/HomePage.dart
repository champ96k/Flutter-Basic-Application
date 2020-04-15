import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
  var data;
  Future<String> getJsonData() async {
    var responce = await http.get(
      Uri.encodeFull(url),
    );

    setState(() {
      var convertdata = json.decode(responce.body);
      data = convertdata;
    });
    print(data[0]["Name"]);
  }

  @override
  void initState() {
    getJsonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("API Application"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(data[index]['title']),
            );
          },
        ));
  }
}

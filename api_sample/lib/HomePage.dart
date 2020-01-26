import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "http://userapi.tk/";
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
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 28,
                      backgroundImage: NetworkImage(data[index]['ImageURL'],
                      )
                    ),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data[index]['ID']),
                ),
              ),
            );
          },
        ));
  }
}

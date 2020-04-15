import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:news_categories/Description.dart';

class ViewNews extends StatefulWidget {
  @override
  _ViewNewsState createState() => _ViewNewsState();
}

class _ViewNewsState extends State<ViewNews> {
  int index;
  var url = "http://news.raushanjha.in/flutterapi/public/index.php/getnewsall";
  var data;
  Future<String> getJsonData(url) async {
    var responce = await http.get(
      Uri.encodeFull(url),
    );

    setState(() {
      var convertdata = json.decode(responce.body);
      data = convertdata;
      print(data);
    });
  }

  @override
  void initState() {
   getJsonData(url);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 16,
        title: Text(
          "The Prime News",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: (data == null)
            ? CircularProgressIndicator()
            : SafeArea(
                child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        elevation: 20.0,
                        child: Container(
                          // height: 320,
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
                              Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: new ClipRRect(
                                      borderRadius:
                                          new BorderRadius.circular(30.0),
                                      child: ('news_image' == null)
                                          ? CircularProgressIndicator()
                                          : Image(
                                              image: NetworkImage("http://news.raushanjha.in/upload/"+data[index]['news_image']),
                                            ))),
                              Wrap(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Description(
                                                            data,
                                                            index,
                                                          )));
                                            }
                                          },
                                          child: data == null
                                              ? CircularProgressIndicator()
                                              : Text(data[index]['news_title']),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: 'news_date' == null
                                        ? CircularProgressIndicator()
                                        : Text(data[index]['news_date']),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
      ),
    );
  }
}

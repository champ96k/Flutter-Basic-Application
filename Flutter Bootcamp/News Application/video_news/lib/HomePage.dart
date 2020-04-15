import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:video_news/Description.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;
  var url ="http://news.raushanjha.in/flutterapi/news";
  var data;
  Future<String> getJsonData(url) async {
    var responce = await http.get(
      Uri.encodeFull(url),
    );
   // print(responce.body);

    setState(() {
      var convertdata = json.decode(responce.body);
      data = convertdata;
    });
  }

  @override
  void initState() {
    getJsonData(url);
    super.initState();
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        elevation: 16,
        title: Text("NEWS",
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
                                              image: NetworkImage(
                                                  data[index]['news_image']),
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
                                          child: data==null ? CircularProgressIndicator():
                                           Text(data[index]['news_title']),
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
                                    child:'news_date' ==null ? CircularProgressIndicator():
                                     Text(data[index]['news_date']),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                        Text("${data[index]['publishedAt']}"),
                                  )
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

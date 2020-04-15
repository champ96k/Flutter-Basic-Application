import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:youtube_clone/PlayVideos.dart';

class Subscriptions extends StatefulWidget {
  @override
  _SubscriptionsState createState() => _SubscriptionsState();
}

class _SubscriptionsState extends State<Subscriptions> {
  int index;
  var url = "http://userapi.tk/youtube/";
  var data, responce;
  Future<String> getJsonData(url) async {
    responce = await http.get(Uri.encodeFull(url));
    print(responce.body);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(6.5),
            child: Image(
              image: AssetImage("images/pic2.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 104),
            child: IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: (data == null)
            ? CircularProgressIndicator()
            : ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PlayVideos(data, index)));
                        },
                        child: Image(
                          width: double.infinity,
                          image: NetworkImage(data[index]['ThumbmnilURL']),
                        ),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    NetworkImage(data[index]['ProfileiconURL']),
                              )),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 72, bottom: 6, top: 10),
                                        child: Text(
                                          "${(data[index]['Title'])}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Text(
                                            "${data[index]['Name']}  ·  ${data[index]['Views']}  ·  ${data[index]['Day']}"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                            color: Colors.grey,
                            icon: Icon(Icons.more_vert),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ],
                  );
                }),
      ),

      
    );
  }
}

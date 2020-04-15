import 'dart:convert';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:new_apps/Description.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;
  var url ="https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
  var data;
  Future<String> getJsonData(url) async {
    var responce = await http.get(
      Uri.encodeFull(url),
    );

    setState(() {
      var convertdata = json.decode(responce.body);
      data = convertdata['articles'];
    });
  }

  @override
  void initState() {
    check();
    getJsonData(url);
    super.initState();
  }

  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }

  bool connected;
  String msg = "No Internet Connected";
  check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
    } else if (connectivityResult == ConnectivityResult.none) {
      return msg;
    }
  }

  checkcat(String status)
  {
    setState(() {
    switch (status) {
      case "business":
      url ="https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=b98abb72aa334a3c9ec2609b31f873d5";        
        getJsonData(url);
        break;
       case "entertainment":
        url="https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
        getJsonData(url);
        break;
       case "health":
       url="https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
        getJsonData(url);
        break;
       case "science":
       url="https://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
        getJsonData(url);
        break;
       case "sports":
       url="https://newsapi.org/v2/top-headlines?country=in&category=sports&apiKey=b98abb72aa334a3c9ec2609b31f873d5";    
        getJsonData(url);
        break;
       case "technology":
       url="https://newsapi.org/v2/top-headlines?country=in&category=technology&apiKey=b98abb72aa334a3c9ec2609b31f873d5";
        getJsonData(url);
        break;
      default:
     }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 22, bottom: 22, left: 62, right: 62),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Divider(
              height: 2,
              thickness: 3,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                checkcat("business");
              },
              leading: Icon(Icons.business),
              title: Text(
                "Business",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                checkcat("entertainment");
              },
              leading: Icon(Icons.functions),
              title: Text(
                "Entertainment",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                checkcat("health");
              },
              leading: Icon(Icons.account_circle),
              title: Text(
                "Health",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                checkcat("science");
              },
              leading: Icon(Icons.signal_cellular_no_sim),
              title: Text(
                "Science",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                checkcat("sports");
              },
              leading: Icon(Icons.stay_current_portrait),
              title: Text(
                "Sports",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                checkcat("technology");
              },
              leading: Icon(Icons.perm_identity),
              title: Text(
                "Technology ",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 2, thickness: 2, color: Colors.black),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline),
              title: Text(
                "Dark Theme",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                changeBrightness();
              },
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.close),
              title: Text(
                "Close",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 50),
              child: Text("Created by Champ96k"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "API Application",
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: (data == null)
            ? CircularProgressIndicator()
            : ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: SizedBox(
                          child: data[index]['urlToImage']==null? Container():
                           Image(
                             height: 250,
                             width: 120,
                            image: NetworkImage(data[index]['urlToImage']),
                          ),
                        )
                      ),
                      title: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: GestureDetector(
                            child: Text(data[index]['title']),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Description(
                                          data,
                                          index,
                                          'description',
                                          'title',
                                          'urlToImage',
                                          'url')));
                            }),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
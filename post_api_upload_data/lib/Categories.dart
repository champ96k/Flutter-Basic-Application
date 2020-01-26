import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int index;
  var url = "http://news.raushanjha.in/flutterapi/category";
  var data;
  Future<String> getJsonData(url) async {
    var responce = await http.get(
      Uri.encodeFull(url),
    );
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
        elevation: 16,
        title: Text(
          "NEWS",
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
                      return Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Card(
                                margin: EdgeInsets.all(40),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12, bottom: 12, left: 20,right: 12),
                                  child: GestureDetector(
                                    onTap: () {
                                      //  Navigator.push(
                                      //             context,
                                      //             MaterialPageRoute(
                                      //                 builder: (context) =>
                                      //                     catDescription(data,index);
                                    },
                                    child: Text(
                                    data[index]["category_name"],
                                    style: TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                  )
                                ),
                              ),
                              Image(
                                  height: 70,
                                  width: 70,
                                  image: NetworkImage(
                                      data[index]['category_image'])),
                            ],
                          )
                        ],
                      );
                    }),
              ),
      ),
    );
  }
}

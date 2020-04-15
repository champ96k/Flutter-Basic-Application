import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';


class Description extends StatefulWidget {
  var data, index;
  Description(
      this.data, this.index);

  @override
  _DescriptionState createState() => _DescriptionState(this.data, this.index);
}

class _DescriptionState extends State<Description> {
  var dataPage, indexPage;
  _DescriptionState(this.dataPage, this.indexPage);

  nextPage() {
    if (indexPage > 18) {
      indexPage = 0;
    } else {
      indexPage = indexPage + 1;
    }
  }

  priviousPage() {
    if (indexPage < 1) {
      indexPage = 19;
    } else {
      indexPage = indexPage - 1;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 16,
        title: Text(
          "Fast News",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: (dataPage == null)
          ? CircularProgressIndicator()
          : ListView(
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child:'news_title'==null ? CircularProgressIndicator() : 
                            Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Html(data: dataPage[indexPage]['news_description'])),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 350,
                    child: 'news_image'==null ? CircularProgressIndicator():
                     Image(
                      image: NetworkImage(dataPage[indexPage]['news_image']),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: 'news_description'==null ? CircularProgressIndicator(): Text(
                          dataPage[indexPage]['news_description'],
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  priviousPage();
                                });
                              },
                              icon: Icon(Icons.navigate_before),
                            ),
                          
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  nextPage();
                                });
                              },
                              icon: Icon(Icons.navigate_next),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
    );
  }
}

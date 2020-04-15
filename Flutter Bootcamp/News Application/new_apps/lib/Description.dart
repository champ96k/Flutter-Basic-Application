import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Description extends StatefulWidget {
  var description, data, index, content, urlToImage, url;
  Description(
      this.data, this.index, this.description, content, urlToImage, url);

  @override
  _DescriptionState createState() => _DescriptionState(this.data, this.index,
      this.description, this.content, this.urlToImage, this.url);
}

class _DescriptionState extends State<Description> {
  var descPage, dataPage, indexPage, contentPage, urlToImagePage, urlPage;
  _DescriptionState(this.dataPage, this.indexPage, this.descPage,
      this.contentPage, this.urlToImagePage, this.urlPage);

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
      appBar: AppBar(
        title: Text(
          "API Application",
          style: TextStyle(
              //color: Colors.black,
              ),
        ),
        centerTitle: true,
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
                            child: Text(
                              dataPage[indexPage]['title'],
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 200,
                    width: 350,
                    child: Image(
                      image: NetworkImage(dataPage[indexPage]['urlToImage']),
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
                        child: Text(
                          dataPage[indexPage]['content'],
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
                                  Share.share(dataPage[indexPage]['url']);
                                });
                              },
                              icon: Icon(Icons.share),
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

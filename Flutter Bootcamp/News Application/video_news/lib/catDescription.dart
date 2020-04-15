import 'package:flutter/material.dart';

class catDescription extends StatefulWidget {
 // var data.index;
  @override
  _catDescriptionState createState() => _catDescriptionState();
}

class _catDescriptionState extends State<catDescription> {

    var  dataPage, indexPage; 
    _catDescriptionState();    


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
        elevation: 16,
        title: Text(
          "NEWS",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:(dataPage == null)
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
                            child:dataPage[indexPage]['news_title']==null ? CircularProgressIndicator() : Text(
                              dataPage[indexPage]['news_title'],
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
                    child: dataPage[indexPage]['news_image']==null ? CircularProgressIndicator():
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
                      //  child: Html(data:dataPage[indexPage]['news_description'])
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
                                  //Share.share(dataPage[indexPage]['url']);
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
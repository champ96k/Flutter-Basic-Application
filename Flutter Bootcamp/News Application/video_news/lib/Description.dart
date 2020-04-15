import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';

class Description extends StatefulWidget {
  var data, index;
  Description(this.data, this.index);

  @override
  _DescriptionState createState() => _DescriptionState(this.data, this.index);
}

class _DescriptionState extends State<Description> {
  var dataPage, indexPage;
  _DescriptionState(this.dataPage, this.indexPage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 240,
                fit: BoxFit.fitHeight,
                width: double.infinity,
                image: NetworkImage(dataPage[indexPage]['news_image']),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(
                  Icons.keyboard_backspace,
                  color: Colors.black,
                ),
                trailing: Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      "https://www.searchpng.com/wp-content/uploads/2019/11/Facebook-Black-Icon-715x715.jpg"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Share.share('https://twitter.com/champ_96k');
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                        "https://toppng.com/uploads/preview/twitter-icon-black-1154999496507pavdk1xp.png"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: NetworkImage(
                      "https://toppng.com/uploads/preview/email-icon-blackcomputer-icons-email-mail-icon-grey-circle-11553378961aaxbikfxmx.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
                child: GestureDetector(
                  onTap: () {
                    Share.share(dataPage[indexPage]['news_image']);
                  },
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                        "https://c7.uihere.com/files/254/169/213/computer-icons-share-icon-business-panels.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 70, right: 8),
                child: Container(
                  height: 24,
                  width: 80,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(3.2),
                    child: Text(
                      "Comments",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 26, left: 8, right: 8, bottom: 8),
                child: dataPage[indexPage]['news_title'] == null
                    ? CircularProgressIndicator()
                    : Text(
                        dataPage[indexPage]['news_title'],
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("📅 ${dataPage[indexPage]['news_date']}",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey
            ),
            ),
          ), 
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: Colors.pinkAccent,
              width: double.infinity,
              height: 0.75,
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Html(data: dataPage[indexPage]['news_description'])),
        ],
      ),
    );
  }
}

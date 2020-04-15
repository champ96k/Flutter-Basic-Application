import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_to_do/ContactDetails.dart';
import 'package:firebase_to_do/myData.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<myData> allData = [];

  @override
  void initState() {
    super.initState();
    // _loadContact();
  }

  void _loadContact() {
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child('contact').once().then((DataSnapshot Snap) {
      var keys = Snap.value.keys;
      var data = Snap.value;
      allData.clear();

      for (var key in keys) {
        myData d = new myData(
          data[key]['name'],
          data[key]['mobile'],
          data[key]['email'],
          data[key]['address'],
          data[key]['imageurl'],
        );
        allData.add(d);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert, color: Colors.black),
          )
        ],
      ),
      body: allData.length == 0
          ? new CircularProgressIndicator()
          : ListView.builder(itemBuilder: (_, index) {
              return new GestureDetector(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 6,
                  color: Colors.red,
                  child: Container(
                    child: Column(
                        children:
                            ListTile.divideTiles(context: context, tiles: [
                      new ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(allData[index].imageurl),
                        ),
                        title: Text(allData[index].name),
                        subtitle: Text(allData[index].mobile),
                      )
                    ])),
                  ),
                ),
              );
            }),
      floatingActionButton: FloatingActionButton(
        elevation: 8.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Details()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

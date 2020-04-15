import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  int count=0; 

  File _image;
  String url;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Center(
            child: GestureDetector(
          onTap: () {
            getImage();
          },
          child: CircleAvatar(
            radius: 32,
            child: _image == null
                ? Icon(Icons.camera)
                : Image.file(_image),
          ),
        )),
        TextField(
          controller: name,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Name',
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
        ),
        TextField(
          controller: mobile,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Mobile',
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
        ),
        TextField(
          controller: email,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Email',
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
        ),
        TextField(
          controller: address,
          decoration: InputDecoration(
              filled: true,
              labelText: 'Address',
              labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))),
        ),
        RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 8,
          color: Color(0xFFd81b60),
          child: Text("Save"),
          onPressed: () {
            if(count==0)
            {
               _sendToServer();
               count++;
            }
             return null;
          },
        )
      ]),
    );
  }

  _sendToServer() async {
    final StorageReference firebaseStorageRef =
        FirebaseStorage.instance.ref().child("image");
    final StorageUploadTask task =
        firebaseStorageRef.child(name.text).putFile(_image);

    StorageTaskSnapshot taskSnapshot = await task.onComplete;
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    print(downloadUrl);

    DatabaseReference ref = FirebaseDatabase.instance.reference();

    var data = {
      "name": name.text,
      "phone": mobile.text,
      "email": email.text,
      "address": address.text,
    };

    ref.child("contact").child(name.text).set(data).then((v) {
      moveToLastScreen();
    });
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }
}

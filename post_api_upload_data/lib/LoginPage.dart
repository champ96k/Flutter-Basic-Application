import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:post_api/Categories.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController name=TextEditingController();
  TextEditingController location=TextEditingController();
  TextEditingController mobile=TextEditingController();
  TextEditingController type=TextEditingController();

  Future<List> sentdata() async {
    final response= await http.post("http://userapi.tk/shobhit/insertsos.php",body: {

      "name":name.text,
      "location":location.text,
      "mobile":mobile.text,
      "type":type.text,
    });
    if(response.body=="user added")
    {
      print("Register Success");
    }
    else
    {
      print("Register Fail");
    }
    print(response.body);

  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30, right: 140.0, bottom: 20),
                  child: Image.asset("assets/logo.png",
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 25, right: 200, top: 7),
                  child: Text(
                    "Welcome,",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                //Welcome Sign in Continue
                Padding(
                  padding: EdgeInsets.only(right: 100, top: 7),
                  child: Text(
                    "Sign in to Continue",
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 35, bottom: 10),
                  child: TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Name",
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 10, bottom: 15),
                  child: TextFormField(
                     controller: location,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Location",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 10, bottom: 15),
                  child: TextFormField(
                    maxLength: 10,
                     controller: mobile,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Mobile",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(
                      right: 35.0, left: 35.0, top: 10, bottom: 15),
                  child: TextFormField(
                     controller: type,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                        labelText: "Type",
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                ),

                MaterialButton(
                  elevation: 20,
                  height: 42,
                  minWidth: 362,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Categories()));
                        sentdata();
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF405DE6),
                ),

               
                SizedBox(
                  height: 100,
                ),
                Text("Created By Champ 💙")
              ],
            ),
          ],
        ));
  }
}

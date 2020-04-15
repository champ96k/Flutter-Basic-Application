import 'package:firebase_auth_app/UI/DashBoardPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _singnInAnonymously() async {
    print("inside signInAnonymously method");
    try {
      final authResult = await _auth.signInAnonymously();
      print("User Id: ${authResult.user.uid}");
    } catch (e) {
      print(e.toString());
    }
  }

  var name, email;

  Future<void> _loginWithGoogle() async {
    try {
      print("inside try");
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final FirebaseUser user =
          (await _auth.signInWithCredential(credential)).user;

      print("name details");
      print(user.email);
      email = user.email;
      print(user.displayName);
      name = user.displayName;
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Authenticatin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Colors.redAccent,
              onPressed: () {
                print("Anonymously button press");
                _singnInAnonymously();
              },
              child: Text(
                "Sign in Anonymously",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              color: Colors.redAccent,
              onPressed: () {
                print("google button press");
                _loginWithGoogle();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DashBoardPage(name, email)));
              },
              child: Text(
                "Sign in google",
                style: TextStyle(color: Colors.white),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}

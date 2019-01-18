import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() => runApp(GoogleSignInTestApp());

class GoogleSignInTestApp extends StatefulWidget {
  @override
  _GoogleSignInTestAppState createState() => _GoogleSignInTestAppState();
}

class _GoogleSignInTestAppState extends State<GoogleSignInTestApp> {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Testing Google Sign In"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => _googleSignIn.signIn(),
            child: Text(
              "Sign In With Google",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}


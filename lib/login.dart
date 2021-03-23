import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
            ),
            onChanged: (value){
              _email = value;
            },
          ),
          SizedBox(height:10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
            ),
            onChanged: (value){
              _password = value;
            },
          ),
          SizedBox(height:10.0),
          FlatButton(onPressed: (){
            print(_email);
            print(_password);
            _auth.signInWithEmailAndPassword(email: _email, password: _password).then((firebaseUser){
              Fluttertoast.showToast(msg: "Logged in successfull..");
              Navigator.pushNamed(context, '/home');
            }).catchError((e){
              if(e.code == "user-not-found"){
                Fluttertoast.showToast(msg: "Sorry!! User Not Found");
                Navigator.pushNamed(context, '/login');
              }else if(e.code == "wrong-password"){
                Fluttertoast.showToast(msg: "Sorry!! Entered Password is incorrec..");
                Navigator.pushNamed(context, '/login');
              }
              else if(e.code == "too-many-requests"){
                Fluttertoast.showToast(msg: "Too many requests");
                Navigator.pushNamed(context, '/login');
              }
              else if(e.code == "argument-error"){
                Fluttertoast.showToast(msg: "Please enter email and password..");
                Navigator.pushNamed(context, '/login');
              }
            });
          }, 
          child: Text("Login"),
          ),
          SizedBox(height:10.0),
          FlatButton(onPressed: (){
            
            Navigator.pushNamed(context, '/signup');
          }, 
          child: Text("Sign Up"),
          ),
        ],
      ),
    );
  }
}
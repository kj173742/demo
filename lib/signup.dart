import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
 String _email;
  String _password;
  String _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Name",
            ),
            onChanged: (value){
              _name = value;
            },
          ),
          SizedBox(height:10.0),
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
          FlatButton(onPressed: () async {
            try{
              final newUser = await _auth.createUserWithEmailAndPassword(email: _email, password: _password);

              if(newUser != null){
                _firestore.collection("users").doc(newUser.user.uid).set({
                  'email' : _email,
                  'name' : _name,
                  'role' : 'user',
                });
                Navigator.pushNamed(context, '/home');
              }
            }catch(e){
              print(e);
            }
          }, 
          child: Text("SignUp"),
          ),
        ],
      ),
    );
  }
}
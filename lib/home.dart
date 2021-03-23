import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.black,
      body: Column(
        
        children: [
          SizedBox(height:10.0),
          FlatButton(onPressed: (){
            FirebaseAuth.instance.signOut().then((value) => {
              Fluttertoast.showToast(msg: "Logged Out successfull.."),
              Navigator.pushNamed(context, '/login'),
            });
          },
           child: Text("Sign Out",style: TextStyle(color: Colors.white),),
           )
        ],
      ),
    );
  }
}
import 'package:demo/home.dart';
import 'package:demo/pages/home_page.dart';
import 'package:demo/signupscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String apptitle = 'Demo Shop';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: apptitle,
      theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'Raleway',
      ),
      
      home: Home(apptitle: apptitle,),
      routes: {
        "/signup" : (_) => SignUp(),
        "/home" : (_) => HomePage(),
        "/login" : (_) => Login(),
        "/signupscreen" : (_) => SignUpScreen(),
      },
    );
  }
}


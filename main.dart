import 'package:flutter/material.dart';
import 'package:eem/Login.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:a_class/pages/login.dart';
// import 'package:a_class/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // ignore: prefer_const_constructors
    home: SignIn(),
  ));
}

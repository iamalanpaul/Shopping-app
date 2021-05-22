import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login.dart';
import 'package:shopping_app/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shopping_app/screens/man.dart';
import 'package:shopping_app/screens/women.dart';
import 'package:shopping_app/screens/children.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => MyApp(),
      '/home': (context) => HomePage(),
      '/men': (context) => Men(),
      '/women': (context) => Women(),
      //'/account': (context) => Account(),
      '/child': (context) => Child(),
      /*'/about': (context) => About(),
      '/wishlist': (context) => Wishlist(),*/
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}

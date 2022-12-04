import 'package:flutter/material.dart';
import 'Login/LoginPage.dart';
import 'NavPages/HomePage/Home.dart';
import 'Signup/SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabbar',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     initialRoute: '/',
      routes: {
        '/': (context) =>LoginPage(),
        '/SignUpPage': (context) =>SignUpPage(),
        '/Home': (context) => Home(),
      },
    );
  }
}


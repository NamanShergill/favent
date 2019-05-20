import 'package:flutter/material.dart';
import 'package:favent/Theme/colors.dart';
import 'package:favent/pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}


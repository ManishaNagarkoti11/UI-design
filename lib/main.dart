import 'package:flutter/material.dart';
import 'package:ui_design/conformation_page,dart.dart';
//import 'package:ui_design/sewaa_uidesign.dart';
//import 'package:ui_design/register_page.dart';
import 'package:ui_design/property_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(),
        home:  ConformationScreen(),
    );
  }
}


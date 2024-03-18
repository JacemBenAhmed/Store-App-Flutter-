import 'package:flutter/material.dart';
import 'package:jcm_store/colors.dart';
import 'package:jcm_store/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JCM Store",
      theme: ThemeData(
        primaryColor: kPrimaryColor ,
        secondaryHeaderColor: kPrimaryColor
      ),
      home: HomeScreen(),
    );
  }
}
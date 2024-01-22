import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app_ui/view/home_page.dart';
import 'package:medical_app_ui/view/intro_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}


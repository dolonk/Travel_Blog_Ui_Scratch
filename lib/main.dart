import 'package:flutter/material.dart';
import 'package:travel_blog_ui/screen/home/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Blog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xffFEFEFE),
        primaryColor: Color(0xfff36f7c),
        accentColor: Color(0xfffff2f3)
      ),
      home: HomePage()
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(HomePageTemp());

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
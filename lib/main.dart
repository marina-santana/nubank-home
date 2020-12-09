import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_nubank/pages/home/home_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark
  ));

  runApp(MyApp());
} 


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'nubank Design Inspiration',
      theme: ThemeData(
      primarySwatch: Colors.purple,
      brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}
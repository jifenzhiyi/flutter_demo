import 'package:flutter/material.dart';
import 'package:flutter_demo/Home.dart';
// import 'package:flutter_demo/Home.dart';
// import 'package:flutter_demo/SingleChildScrollViewTask.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(), // FirstScreen
    );
  }
}

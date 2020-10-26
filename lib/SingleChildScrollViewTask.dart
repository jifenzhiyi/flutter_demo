import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SingleChildScrollViewTask extends StatelessWidget {
  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView的学习'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) => Text(
            item,
            style: TextStyle(
              fontSize: 20,
            ),
          )).toList(),
        ),
      ),
    );
  }
}
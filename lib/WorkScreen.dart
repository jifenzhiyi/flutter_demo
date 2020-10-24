import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('管理'),
      ),
      body: Center(
        child: Text('管理')
      )
    );
  }
}
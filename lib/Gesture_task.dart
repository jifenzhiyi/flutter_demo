import 'package:flutter/material.dart';

class GestureTask extends StatelessWidget {
  const GestureTask({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手势的学习'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          // child: RaisedButton(
          //   onPressed: () {
          //     print('object');
          //   },
          //   child: Text('这是一个文本'),
          // )
          child: GestureDetector(
            onTap: () {
              print('onTap');
            },
            child: Text('这是一个文本'),
          ),
        ),
      ),
    );
  }
}
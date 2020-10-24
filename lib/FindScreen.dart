import 'package:flutter/material.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现'),
      ),
      body: Center(
        child: Center(
          child: new Column(
            children: <Widget> [
              Image.asset(
                'assets/images/n3.png',
                width: 100,
                // height: 100,
              ),
              Image.network(
                'https://upload-images.jianshu.io/upload_images/1658521-0dd54ba1f49ce0af.jpg?imageMogr2/auto-orient/strip|imageView2/2/w/700/format/webp',
                width: 100,
                // height: 100,
                // fit: BoxFit.cover,
              ),
            ]
          )
        ),
      ),
    );
  }
}
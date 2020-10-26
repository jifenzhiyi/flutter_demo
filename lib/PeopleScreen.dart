import 'package:flutter/material.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('好友'),
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: Text(
            '我的我的我的我的哦房间看撒娇疯狂拉升到家了发酒疯了积分卡圣诞节福利卡上就分开了',
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ),
    );
  }
}
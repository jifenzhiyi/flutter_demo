import 'package:flutter/material.dart';
import 'package:flutter_demo/PeopleScreen.dart';
import 'package:flutter_demo/FindScreen.dart';
import 'package:flutter_demo/WorkScreen.dart';
import 'package:flutter_demo/MineScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  FirstScreen({Key key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final List<Widget> _children = [
    PeopleScreen(),
    FindScreen(),
    WorkScreen(),
    MineScreen(),
  ];

  int _currentIndex = 0;

  void onTabTapped(int selectIndex) {
    setState(() {
      _currentIndex = selectIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      drawer: Drawer(
        child: Center(
          child: Text('Drawer'),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 14, // selectedFontSize
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('好友'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.visibility),
            title: Text('发现'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('管理'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('我的'),
          ),
        ]
      ),
    );
  }
}

// 好友 people 发现 visibility 管理 work 我的 settings
// 暗号：初见Flutter

/* 备注
// selectedItemColor: Colors.blue,
// unselectedItemColor 未选中的颜色设置
// 透明度：Colors.blue.shade100
*/

// class SecondScreen extends StatelessWidget {

//   final String content;
//   final String title;

//   SecondScreen({ this.content, this.title });

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: AppBar(
//         title: Text('$title'),
            // centerTitle: false,
            // leading: Icon(Icons.access_alarms),
            // actions: <Widget>[
            //   Icon(Icons.accessibility),
            // ],
//       ),
//       body: Center(
//         child: Text('$content'),
//       ),
//     );
//   }
// }

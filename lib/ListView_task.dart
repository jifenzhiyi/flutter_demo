import 'package:flutter/material.dart';

class ListViewTask extends StatelessWidget {

  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView的学习'),
      ),
      body: getListView2(),
    );
  }

  // getListView1() {
  //   return ListView.builder(
  //     itemCount: items.length,
  //     itemBuilder: (context, index) {
  //       var content = items[index];
  //       return InkWell(
  //         child: Padding(
  //           padding: EdgeInsets.only(top: 20),
  //           child: Text(content),
  //         ),
  //         onTap: () {
  //           print('object');
  //         }
  //       );
  //     }
  //   );
  // }

  getListView2() {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var content = items[index];
        return InkWell(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(content),
          ),
          onTap: () {
            print('object');
          }
        );
      },
      separatorBuilder: (context, index) {
        return Divider(); // 分割线 color: Colors.red
      },
    );
  }
}

// 暗号：不用背，学规律

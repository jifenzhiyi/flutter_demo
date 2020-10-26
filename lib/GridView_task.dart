import 'package:flutter/material.dart';

class GridViewTask extends StatelessWidget {
  List<String> items = List.generate(50, (index) => 'item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('GrideView的学习'),
      ),
      body: getGridView3(),
    );
  }

  // getGridView() {
  //   return GridView.count(
  //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
  //     crossAxisCount: 2,
  //     crossAxisSpacing: 10,
  //     mainAxisSpacing: 10,
  //     childAspectRatio: 0.5,
  //     children: items.map((item) => getItemContainer(item)).toList(),
  //   );
  // }

  // getGridView2() {
  //   return GridView.builder(
  //     itemCount: items.length,
  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //       crossAxisCount: 3,
  //       crossAxisSpacing: 10,
  //       mainAxisSpacing: 10,
  //     ),
  //     itemBuilder: (context, index) {
  //       return getItemContainer(items[index]);
  //     },
  //   );
  // }

  getGridView3() {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return getItemContainer(items[index]);
      },
    );
  }

  Widget getItemContainer(String item) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text(
        item, 
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
      ),
    );
  }
}
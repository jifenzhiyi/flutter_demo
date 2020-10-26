import 'package:flutter/material.dart';
import 'package:flutter_demo/Find/Article.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(model.logo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 110,
                    child: Text(
                      model.location,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '| ${model.type}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '| ${model.size}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        '| ${model.employee}',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '热招：${model.hot} 等${model.count}个职位',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    size: 20,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

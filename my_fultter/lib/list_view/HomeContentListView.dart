import 'package:flutter/material.dart';

class HomeContentListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/3.png"),
      ],
    ));
  }
}

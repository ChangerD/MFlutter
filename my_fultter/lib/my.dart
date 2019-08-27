import 'package:flutter/material.dart';

import 'ActiveListView.dart';
import 'ActiveListView2.dart';
import 'HomeContentListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("MyFlutter")),
      body: HomeContentActiveListView2(),
    ));
  }
}

class HomeContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Text(
        'Content , XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
        textAlign: TextAlign.left,
        overflow: TextOverflow.clip,
        maxLines: 1,
        textScaleFactor: 1,
        //放大
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.red,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          //decoration: TextDecoration.lineThrough,
          //decorationColor: Colors.amber,
          //decorationStyle: TextDecorationStyle.dotted,
          //decorationThickness: 1,
          letterSpacing: 5.0, //字间距
        ),
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue, width: 2.0)),
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      transform: Matrix4.rotationX(45),
      alignment: Alignment.bottomCenter,
    ));
  }
}

class HomeContentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Image.network(
        "https://img01.sogoucdn.com/app/a/100520076/093e7fb2340143f782a9ea35a8bae214",
        alignment: Alignment.topLeft,
        color: Colors.blue,
        colorBlendMode: BlendMode.color, //混合模式
        //fit: BoxFit.fitWidth,
        repeat: ImageRepeat.repeat,
      ),
      height: 500,
      width: 500,
    ));
  }
}

class HomeContentCircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(150),
        image: DecorationImage(
            image: NetworkImage(
                "https://img01.sogoucdn.com/app/a/100520076/093e7fb2340143f782a9ea35a8bae214"),
            fit: BoxFit.fill),
      ),
    ));
  }
}

class HomeContentCircleImage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 300,
      child: ClipOval(
        child: Image.network(
          "https://img01.sogoucdn.com/app/a/100520076/093e7fb2340143f782a9ea35a8bae214",
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}

class HomeContentImageLocal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 300,
      width: 300,
      child: ClipOval(
        child: Image.asset(
          "images/pic.png",
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}

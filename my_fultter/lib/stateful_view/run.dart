import 'package:flutter/material.dart';
import 'package:my_fultter/card_view/CardView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MyFlutter")), body: HomePage2()));
  }
}

class HomePage extends StatelessWidget {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text("hello"),
        RaisedButton(
          child: Text("Btn"),
          onPressed: () {
            count++;
          },
        )
      ],
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}

class HomePageState extends State<HomePage2> {
  int count = 0;
  List list = new List();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Text("hello$count"),
        RaisedButton(
          child: Text("Btn"),
          onPressed: () {
            setState(() {
              list.add("新增数据");
            });
          },
        ),
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        )
      ],
    );
  }
}

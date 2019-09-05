import 'package:flutter/material.dart';

class YellowPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return YellowPageState();
  }
}

class YellowPageState extends State<YellowPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("YellowPage")),
        body: ListView(children: <Widget>[
          RaisedButton(
              child: Text("Routes替换路由"),
              onPressed: () {
                //打开并替换当前页面
                Navigator.pushReplacementNamed(context, '/blue');
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary),
          RaisedButton(
              child: Text("Routes普通路由"),
              onPressed: () {
                //打开并替换当前页面
                Navigator.pushNamed(context, '/blue');
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary)
        ]));
  }
}

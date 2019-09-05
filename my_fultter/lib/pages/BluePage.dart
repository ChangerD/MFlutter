import 'package:flutter/material.dart';
import 'package:my_fultter/app/app.dart';

class BluePage extends StatefulWidget {
  final arguments;

  BluePage({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BluePageState(arguments: arguments);
  }
}

class BluePageState extends State<BluePage> {
  final arguments;

  BluePageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("BluePage")),
        body: ListView(
          children: <Widget>[
            Text('${arguments == null ? "Null" : arguments["id"]}'),
            RaisedButton(
                child: Text("返回根"),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(builder: (context) => new Tabs()),
                      (route) => route == null);
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary),
            RaisedButton(
                child: Text("返回设置"),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (context) => new Tabs(index: 1)),
                      (route) => route == null);
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary)
          ],
        ));
  }
}

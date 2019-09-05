import 'package:flutter/material.dart';
import 'package:my_fultter/pages/FormPage.dart';
import 'package:my_fultter/pages/RedPage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        RaisedButton(
            child: Text("跳转页面"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RedPage()));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        RaisedButton(
            child: Text("跳转页面传值"),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FormPage(
                        title: "跳转传值",
                      )));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        RaisedButton(
            child: Text("Routes跳转页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/yellow');
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        RaisedButton(
            child: Text("Routes跳转页面传参"),
            onPressed: () {
              Navigator.pushNamed(context, '/blue', arguments: {"id": 100});
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
      ],
    );
  }
}

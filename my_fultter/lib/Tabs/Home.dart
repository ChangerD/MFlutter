import 'package:flutter/material.dart';
import 'package:my_fultter/pages/FormPage.dart';
import 'package:my_fultter/pages/HomePage.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转页面"),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => HomePage()));
          },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary
        ),
        RaisedButton(
            child: Text("跳转页面传值"),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FormPage(title: "跳转传值",)));
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary
        ),
      ],
    );
  }
}

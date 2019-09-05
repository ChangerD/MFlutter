import 'package:flutter/material.dart';

class Home1DetailPage extends StatefulWidget {
  final arguments;

  Home1DetailPage({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home1DetailPageState(arguments: arguments);
  }
}

class Home1DetailPageState extends State<Home1DetailPage> {
  final arguments;

  Home1DetailPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Home1-Detail")), body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Image.network(arguments['data']['imageUrl']),
          Container(height: 50),
          Text(arguments['data']['title'],
            style: TextStyle(
            fontSize: 36,
              color: Colors.black
          ),),
          Container(height: 20),
          Text(arguments['data']['author'],style: TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),),
        ],
      ),
    );
  }
}

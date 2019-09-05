import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home3State();
  }
}

class Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Home3")), body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return Center();
  }
}

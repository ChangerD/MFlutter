import 'package:flutter/material.dart';

import 'ActiveListView2.dart';

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
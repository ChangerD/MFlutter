import 'package:flutter/material.dart';
import 'package:my_fultter/pages/FormPage.dart';
import 'package:my_fultter/pages/RedPage.dart';

class Data extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DataState();
  }
}

class DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(padding: EdgeInsets.all(20), children: [Text("Data")]);
  }
}

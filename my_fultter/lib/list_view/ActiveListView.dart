import 'package:flutter/material.dart';

class HomeContentActiveListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: _getData(),
    ));
  }

  List<Widget> _getData() {
    List<Widget> list = new List();
    for(var i = 0;i<20;i++){
      list.add(ListTile(
        title: Text("我是第$i个"),
      ));
    }
    return list;
  }
}

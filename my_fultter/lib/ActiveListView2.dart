import 'package:flutter/material.dart';
import 'res/listData.dart';

class HomeContentActiveListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _getListView(context),
    );
  }

  List<Widget> _getData() {
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });
    return tempList.toList();
  }

  Widget _getListView(BuildContext context) {
    return ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) {
          var value = listData[index];
          return ListTile(
            leading: Image.network(value["imageUrl"]),
            title: Text(value["title"]),
            subtitle: Text(value["author"]),
          );
        });
  }
}

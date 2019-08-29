import 'package:flutter/material.dart';

import '../res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("MyFlutter")),
      body: Padding(
        child: GridView2(),
        padding: EdgeInsets.all(20),
      ),
    ));
  }
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      //childAspectRatio: 1,
      padding: EdgeInsets.all(20),
      children: getGridViewList2(),
    );
  }

  List<Widget> getGridViewList() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
          alignment: Alignment.center,
          child: Text(
            'This is $i',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.blue));
    }
    return list;
  }

  List<Widget> getGridViewList2() {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 20,
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      );
    });
    return list.toList();
  }
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: listData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          var value = listData[index];
          return Container(
            child: Column(
              children: <Widget>[
                Image.network(value['imageUrl']),
                SizedBox(
                  height: 20,
                ),
                Text(
                  value['title'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:my_fultter/card_view/CardView.dart';
import 'package:my_fultter/nav_bar/Data.dart';

import '../Tabs/Home.dart';
import 'Setting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState();
  }
}

class TabsState extends State<Tabs> {
  int currentIndex = 0;
  List pageList = [Home(), Setting(), Data()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("MyFlutter")),
      body: this.pageList[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 36,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: this.currentIndex,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
            print(index);
          });
        },
        items: [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("设置"), icon: Icon(Icons.settings)),
          BottomNavigationBarItem(title: Text("数据"), icon: Icon(Icons.list))
        ],
      ),
    );
    ;
  }
}

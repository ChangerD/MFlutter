import 'package:flutter/material.dart';
import 'package:my_fultter/Tabs/Data.dart';
import 'package:my_fultter/Tabs/Home.dart';
import 'package:my_fultter/Tabs/Setting.dart';
import 'package:my_fultter/route/Routes.dart' as appRoute;

void main() {
  runApp(MyApp());
}

//Route-1
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(routes: {
//      '/form': (context) => FormPage(),
//      '/red': (context) => RedPage(),
//      '/yellow': (context) => YellowPage()
//    }, home: Tabs());
//  }
//}

//Route-2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,initialRoute: '/tabBarControllerPage',onGenerateRoute: appRoute.onGenerateRoute, home: Tabs());
  }
}

class Tabs extends StatefulWidget {

  final index;

  Tabs({Key key,this.index = 0}) :super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState(this.index);
  }
}

class TabsState extends State<Tabs> {

  TabsState(index){
    this.currentIndex = index;
  }

  int currentIndex = 0;
  List pageList = [
    Home(),
    Setting(),
    Data(),
  ];

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
          });
        },
        items: [
          BottomNavigationBarItem(title: Text("首页"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("设备"), icon: Icon(Icons.settings)),
          BottomNavigationBarItem(title: Text("数据"), icon: Icon(Icons.list))
        ],
      ),
    );
    ;
  }
}

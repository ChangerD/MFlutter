import 'package:flutter/material.dart';
import 'package:my_fultter/my_demo_app/tabs/Home1.dart';
import 'package:my_fultter/my_demo_app/tabs/Home2.dart';
import 'package:my_fultter/my_demo_app/tabs/Home3.dart';
import 'package:my_fultter/my_demo_app/route//Routes.dart' as appRoute;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: appRoute.onGenerateRoute,
        home: Tabs());
  }
}

class Tabs extends StatefulWidget {
  final index;

  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabsState(this.index);
  }
}

class TabsState extends State<Tabs> {
  TabsState(index) {
    this.currentIndex = index;
  }

  int currentIndex = 0;
  List pageList = [
    Home1(),
    Home2(),
    Home3(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("My Flutter")),
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
          BottomNavigationBarItem(title: Text("Home1"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Home2"), icon: Icon(Icons.settings)),
          BottomNavigationBarItem(title: Text("Home3"), icon: Icon(Icons.list))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover,
                      )),
                  accountName: Text("JWDING"),
                  accountEmail: Text("jiawei_ding@huacenav.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.itying.com/images/flutter/3.png"),
                  ),
                  //otherAccountsPictures: <Widget>[
                  //  Image.network(
                  //      "https://www.itying.com/images/flutter/4.png"),
                  //  Image.network(
                  //      "https://www.itying.com/images/flutter/5.png"),
                  //],
                ))
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.home)),
              title: Text("TabHome1"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text("TabHome2"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text("TabHome3"),
            ),
            Divider(),
          ],
        ),
      ),
    );
    ;
  }
}

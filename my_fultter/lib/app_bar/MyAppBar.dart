import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("AppBar"),
            centerTitle: true,
            backgroundColor: Colors.red,
            leading: IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search,color: Colors.white,),
              ),IconButton(
                icon: Icon(Icons.settings,color: Colors.white,),
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: "热门",),
                Tab(text: "推荐",),
              ],
            ),
          ),
          body:
          TabBarView(
            children: <Widget>[
              Text("Tab1"),
              Text("Tab2")
            ],
          )
        )
      ),
    );
  }
}



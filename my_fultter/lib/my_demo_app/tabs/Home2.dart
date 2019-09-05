import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home2State();
  }
}

class Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("Home2")), body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:TabBar(
                    //isScrollable:true,  //如果多个按钮的话可以滑动
                    indicatorColor:Colors.white,
                    unselectedLabelColor: Colors.white,
                    //indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: "使用库"),
                      Tab(text: "自定义插件"),
                    ],
                  ) ,
                )
              ],
            ),
          ),
          body:TabBarView(
            children: <Widget>[
              Text("使用库"),
              Text("自定义插件")
            ],
          )
      ),
    );
  }
}

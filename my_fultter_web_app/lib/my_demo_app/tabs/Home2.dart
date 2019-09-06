import 'package:flutter_web/material.dart';
//import 'package:image_picker/image_picker.dart';

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
        body: _getBody(context));
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
                      Tab(text: "调用原生插件"),
                      Tab(text: "调用原生代码"),
                    ],
                  ) ,
                )
              ],
            ),
          ),
          body:TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          '调用原生-相机',
                          style: TextStyle(color: Colors.black),
                        ),
                        onTap: () {
                            Navigator.pushNamed(context, "/NativeImagePicker");
                        },
                      ),
                      decoration: BoxDecoration(color: Colors.black12)),
                ],
              ),
              ListView(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          '调用原生-代码',
                          style: TextStyle(color: Colors.black),
                        ),
                        onTap: () {

                        },
                      ),
                      decoration: BoxDecoration(color: Colors.black12)),
                ],
              ),
            ],
          )
      ),
    );
  }
}

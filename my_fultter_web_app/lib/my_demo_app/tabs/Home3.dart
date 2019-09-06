import 'package:flutter_web/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

class Home3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home3State();
  }
}

class Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: ListView(
        children: <Widget>[
          Container(
              child: ListTile(
                title: Text(
                  '打开提示框',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('提示框'),
                          content: Text('你确定----xxxxxxxxx------?'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('取消'),
                              onPressed: () {
                                Navigator.pop(context, 'Cancel');
                              },
                            ),
                            FlatButton(
                              child: Text('确定'),
                              onPressed: () {
                                Navigator.pop(context, 'Confirm');
                              },
                            )
                          ],
                        );
                      });
                  print(result);
                },
              ),
              decoration: BoxDecoration(color: Colors.black12)),
          Container(
            height: 10,
          ),
          Container(
              child: ListTile(
                title: Text(
                  '打开选择框',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () async {
                  var result = await showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text('选择内容'),
                          children: <Widget>[
                            SimpleDialogOption(
                              child: Text(
                                'Option A',
                                style: TextStyle(height: 2),
                              ),
                              onPressed: () {
                                Navigator.pop(context, "A");
                              },
                            ),
                            SimpleDialogOption(
                              child: Text(
                                'Option B',
                                style: TextStyle(height: 2),
                              ),
                              onPressed: () {
                                Navigator.pop(context, "B");
                              },
                            )
                          ],
                        );
                      });
                  print(result);
                },
              ),
              decoration: BoxDecoration(color: Colors.black12)),
          Container(
            height: 10,
          ),
          Container(
              child: ListTile(
                title: Text(
                  '打开底部选择栏',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () async {
                  var result = await showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            height: 130,
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    'Option A',
                                    style: TextStyle(height: 2),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context, "A");
                                  },
                                ),
                                ListTile(
                                  title: Text(
                                    'Option B',
                                    style: TextStyle(height: 2),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context, "B");
                                  },
                                )
                              ],
                            ));
                      });
                  print(result);
                },
              ),
              decoration: BoxDecoration(color: Colors.black12)),
          Container(
            height: 10,
          ),
          Container(
              child: ListTile(
                title: Text(
                  '显示Toast',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  //Fluttertoast.showToast(msg: "My Toast",
                  //gravity: ToastGravity.CENTER);
                },
              ),
              decoration: BoxDecoration(color: Colors.black12)),
        ],
      ),
    );
  }
}

import 'package:flutter_web/material.dart';
import 'package:my_fultter/res/listData.dart';

class Home1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Home1State();
  }
}

class Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return _getListView(context);
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
            onTap: () {
              Navigator.pushNamed(context, '/Home1DetailPage',
                  arguments: {"data": value});
            },
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'IconView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MyFlutter")), body: StackView3()));
  }
}

class RowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        IconView(
          Icons.home,
          color: Colors.blue,
        ),
        IconView(
          Icons.search,
          color: Colors.blue,
        ),
        IconView(
          Icons.add,
          color: Colors.blue,
        ),
        IconView(
          Icons.list,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class ColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconView(
          Icons.home,
          color: Colors.blue,
        ),
        IconView(
          Icons.search,
          color: Colors.blue,
        ),
        IconView(
          Icons.add,
          color: Colors.blue,
        ),
        IconView(
          Icons.list,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class FlexView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconView(
            Icons.home,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 2,
          child: IconView(
            Icons.add,
            color: Colors.blue,
          ),
        ),
        IconView(
          Icons.add,
          color: Colors.blue,
        )
      ],
    );
  }
}

class FlexView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          alignment: Alignment.center,
          child: Text("Hello KuGou"),
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                  height: 200,
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Container(
                        height: 100,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/1.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )),
          ],
        )
      ],
    );
  }
}

class StackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment(0,1),
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.blue,
        ),
        Text("I am Text",style: TextStyle(fontSize: 20,color: Colors.white),)
      ],
    );
  }
}


class StackView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment(1,-0.2),
              child: Icon(Icons.home,size: 40,color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search,size: 30,color: Colors.white),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.settings_applications,size: 30,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class StackView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          // alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              //  left: 10,
              child: Icon(Icons.home,size: 40,color: Colors.white),
            ),
            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search,size: 30,color: Colors.white),
            ),
            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications,size: 30,color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
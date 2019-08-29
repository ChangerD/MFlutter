import 'package:flutter/material.dart';
import 'package:my_fultter/card_view/CardView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("MyFlutter")), body: WrapView()));
  }
}

class AspectRatioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 3 / 1.0,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class WrapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        height: 600,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          direction: Axis.vertical,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceAround,
          children: <Widget>[
            MyButton("First"),
            MyButton("Second"),
            MyButton("ThirdSecond"),
            MyButton("Forth"),
            MyButton("First"),
            MyButton("SecondSecond"),
            MyButton("Third"),
            MyButton("Forth"),
            MyButton("FirstForthSecondFirstForthSecond"),
            MyButton("Second"),
            MyButton("Third"),
            MyButton("ForthSecond"),
            MyButton("First"),
            MyButton("Second"),
            MyButton("Third"),
            MyButton("Forth"),
            MyButton("First"),
            MyButton("Second"),
          ],
        ),
      );
  }
}

class MyButton extends StatelessWidget {

  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(text),
      textColor: Theme
          .of(context)
          .accentColor,
      onPressed: () {},
    );
  }
}

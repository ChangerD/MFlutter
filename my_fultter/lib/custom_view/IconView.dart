import 'package:flutter/material.dart';

class IconView extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;

  IconView(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100.0,
      color: this.color,
      child:
          Center(child: Icon(this.icon, size: this.size, color: Colors.white)),
    );
  }
}

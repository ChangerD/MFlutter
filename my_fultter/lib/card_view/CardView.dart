 import 'package:flutter/material.dart';

class CardView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Name",style: TextStyle(fontSize: 20,color: Colors.black),),
                subtitle: Text("Engineer")
              ),
              ListTile(
                  title: Text("Tel",style: TextStyle(fontSize: 20,color: Colors.black),),
                  subtitle: Text("Address")
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                  title: Text("Name",style: TextStyle(fontSize: 20,color: Colors.black),),
                  subtitle: Text("Engineer")
              ),
              ListTile(
                  title: Text("Tel",style: TextStyle(fontSize: 20,color: Colors.black),),
                  subtitle: Text("Address")
              ),
            ],
          ),
        )
      ],
    );
  }
}
//import 'dart:io';

import 'package:flutter_web/material.dart';
//import 'package:image_picker/image_picker.dart';

class NativeImagePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NativeImagePickerState();
  }
}

class NativeImagePickerState extends State<NativeImagePicker> {
  //File _image;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: _getBody(context));
  }

  Widget _getBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        //child: _image == null ? Text('No image selected.') : Image.network("https://www.itying.com/images/flutter/3.png"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Future getImage() async {
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    //setState(() {
    //  _image = image;
    //});
  }
}

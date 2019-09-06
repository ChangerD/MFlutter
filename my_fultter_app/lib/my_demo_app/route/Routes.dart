import 'package:flutter/material.dart';
import 'package:my_fultter/my_demo_app/to_native//NativeImagePicker.dart';
import 'package:my_fultter/my_demo_app/pages/Home1DetailPage.dart';

final routes = {
  '/Home1DetailPage': (context, {arguments}) => Home1DetailPage(arguments: arguments),
  '/NativeImagePicker': (context) => NativeImagePicker(),
};

//固定写法
Function onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
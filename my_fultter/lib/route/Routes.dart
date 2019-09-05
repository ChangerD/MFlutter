import 'package:flutter/material.dart';
import 'package:my_fultter/app_bar/MyAppBar.dart';
import 'package:my_fultter/app_bar/TabBarController.dart';
import 'package:my_fultter/pages/BluePage.dart';
import 'package:my_fultter/pages/FormPage.dart';
import 'package:my_fultter/pages/RedPage.dart';
import 'package:my_fultter/pages/YellowPage.dart';

final routes = {
  '/form': (context) => FormPage(),
  '/red': (context) => RedPage(),
  '/yellow': (context) => YellowPage(),
  '/appBarPage': (context) => MyAppBar(),
  '/tabBarControllerPage': (context) => TabBarControllerPage(),
  '/blue': (context, {arguments}) => BluePage(arguments: arguments),
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
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};

import 'package:etra/views/homepage.dart';
import 'package:etra/views/users.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String user = '/user';
  static const String home = '/home';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => Homepage(),
      user: (context) => UsersPage(),
    };
  }
}

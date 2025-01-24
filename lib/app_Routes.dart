import 'package:etra/views/gridview_hommepage.dart';
import 'package:etra/views/homepage.dart';
import 'package:etra/views/userReg.dart';
import 'package:etra/views/users.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String user = '/user';
  static const String home = '/home';
  static const String registration = '/registration';
  // static const String registration = '/registration';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => DashboardPage(),
      user: (context) => UsersPage(),
      registration: (context) => RegistrationForm(),
    };
  }
}

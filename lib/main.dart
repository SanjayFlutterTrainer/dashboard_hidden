import 'package:etra/core/config/dio_config.dart';
import 'package:etra/core/constants/app_colors.dart';
import 'package:etra/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:etra/providers/userProvider.dart';
import 'package:etra/views/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dio = DioConfig.createDio(); // Get Dio instance from DioConfig

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(dio), // Pass Dio to UserProvider
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
          scaffoldBackgroundColor: AppColors.backgroundColor,
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: AppColors.textColor),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Homepage(), // The screen that will display users
      ),
    );
  }
}

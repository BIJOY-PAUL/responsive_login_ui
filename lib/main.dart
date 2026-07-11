import 'package:flutter/material.dart';
import 'package:from_validation_learn/constant/color.dart';
import 'package:from_validation_learn/screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.background,
      ),

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

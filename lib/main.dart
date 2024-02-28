import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(const Quiz());
}
  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return const GetMaterialApp(
        // color: Colors.blueAccent,
        debugShowCheckedModeBanner: false,
        // home: StartScreen(),Z
      );
    }
  }


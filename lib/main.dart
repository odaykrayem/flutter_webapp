import 'package:flutter/material.dart';
import 'package:flutter_webapp/constants.dart';
import 'package:flutter_webapp/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: kDefaultInputDecorationTheme,
      ),
      home: HomeScreen(),
    );
  }
}

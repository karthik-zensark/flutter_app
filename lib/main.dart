import 'package:flutter/material.dart';
import 'package:responsive_app/locator.dart' as locator;
import 'views/home_view.dart' as home_view;

void main() {
  locator.setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home_view.HomeView(),
    );
  }
}

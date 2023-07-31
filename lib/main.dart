import 'package:flutter/material.dart';
import 'package:periodictable/screens/element/elementviewer.dart';
// import 'package:periodictable/screens/element/elementviewer.dart';
import 'package:periodictable/screens/homepage/homepage.dart';

import 'etc/colors/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Bungee',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColor.primaryColor,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

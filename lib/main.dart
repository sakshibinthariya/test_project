import 'package:flutter/material.dart';
import 'package:test_project/homepage.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: 'home_page',
  // home: MyApp(),
  routes: {
    'home_page': (context) => MyHomePage(),
  },
));

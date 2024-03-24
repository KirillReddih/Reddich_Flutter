import 'package:flutter/material.dart';
import 'package:lab2_test/Screen/MainScreen/MainScreen.dart';

void main() => runApp( MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.white,
  ),
  initialRoute: '/',
  routes: {
    '/': (context) => const MainScreen()
  }
)
);
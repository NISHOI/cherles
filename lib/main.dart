import 'package:finals/pages/checkoutMenu.dart';
import 'package:finals/pages/coffeeScreen.dart';
import 'package:finals/pages/homeScreen.dart';
import 'package:finals/pages/logInPage.dart';
import 'package:finals/pages/pastryScreen.dart';
import 'package:finals/pages/orderMenu.dart';
import 'package:finals/pages/viewAccount.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Daily Grind',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: const SafeArea(child: Loginpage()),
    );
  }
}

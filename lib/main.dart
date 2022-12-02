// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_adv_ui/screens/landing.dart';
import 'package:simple_adv_ui/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      home: Landing(),
      debugShowCheckedModeBanner: false,
      title: "Ui Tester 1",
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DATA,
        fontFamily: "Montserrat",
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: COLOR_DARK_BLUE),
      ),
    );
  }
}

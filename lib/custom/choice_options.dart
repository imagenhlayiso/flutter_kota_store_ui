// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:simple_adv_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class ChoiceOptions extends StatelessWidget {
  final String text;
  const ChoiceOptions({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: COLOR_GREY.withAlpha(25),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TEXT_THEME_DATA.headline5,
      ),
    );
  }
}

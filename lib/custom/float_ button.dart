// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:simple_adv_ui/utils/constants.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final double width;
  final IconData icon;
  const OptionButton(
      {super.key, required this.text, required this.width, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(COLOR_DARK_BLUE),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: COLOR_WHITE,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(color: COLOR_WHITE),
            ),
          ],
        ),
      ),
    );
  }
}

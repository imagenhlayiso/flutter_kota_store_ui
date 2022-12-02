import 'package:flutter/material.dart';
import 'package:simple_adv_ui/utils/constants.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  final double width, height;
  final EdgeInsets padding;
  const BorderBox(
      {super.key,
      required this.child,
      required this.width,
      required this.height,
      required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: COLOR_GREY.withAlpha(40),
          width: 2.0,
        ),
      ),
      padding: padding,
      child: Center(child: child),
    );
  }
}

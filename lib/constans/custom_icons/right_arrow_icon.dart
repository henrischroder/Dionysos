import 'package:flutter/material.dart';

class RightArrowIcon extends StatelessWidget {
  const RightArrowIcon({
    Key? key,
    this.iconColor = Colors.white,
    this.iconSize = 25,
  }) : super(key: key);
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_right,
      color: iconColor,
      size: iconSize,
    );
  }
}

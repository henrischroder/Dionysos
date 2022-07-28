import 'package:flutter/material.dart';

class DownArrowIcon extends StatelessWidget {
  const DownArrowIcon({
    Key? key,
    this.iconColor = Colors.white,
    this.iconSize = 25,
  }) : super(key: key);
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.keyboard_arrow_down,
      color: iconColor,
      size: iconSize,
    );
  }
}

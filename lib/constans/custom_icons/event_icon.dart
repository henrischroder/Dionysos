import 'package:flutter/material.dart';

class EventIcon extends StatelessWidget {
  const EventIcon({
    Key? key,
    this.iconColor = Colors.white,
    this.iconSize = 25,
  }) : super(key: key);
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.cake_rounded,
      color: iconColor,
      size: iconSize,
    );
  }
}

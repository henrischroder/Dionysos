import 'package:flutter/material.dart';

class CalendarIcon extends StatelessWidget {
  const CalendarIcon({
    Key? key,
    this.iconColor = Colors.white,
    this.iconSize = 25,
  }) : super(key: key);
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.calendar_month_rounded,
      color: iconColor,
      size: iconSize,
    );
  }
}

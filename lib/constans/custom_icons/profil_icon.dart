import 'package:flutter/material.dart';

class ProfilIcon extends StatelessWidget {
  const ProfilIcon({
    Key? key,
    this.iconColor = Colors.white,
    this.iconSize = 25,
  }) : super(key: key);
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.account_circle_outlined,
      color: iconColor,
      size: iconSize,
    );
  }
}

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/scheduler.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

neumorphisInnerShadow() {
  var brightness = SchedulerBinding.instance.window.platformBrightness;
  bool isDarkMode = brightness == Brightness.dark;
  if (isDarkMode) {
    return [
      BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(4, 4),
          inset: true),
      BoxShadow(
        color: Colors.white.withOpacity(0.25),
        spreadRadius: 2,
        blurRadius: 10,
        offset: const Offset(-4, -4),
        inset: true,
      ),
    ];
  } else {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.25),
        spreadRadius: 2,
        blurRadius: 10,
        offset: const Offset(4, 4),
        inset: true,
      ),
      BoxShadow(
        color: Colors.white.withOpacity(0.6),
        spreadRadius: 2,
        blurRadius: 10,
        offset: const Offset(-4, -4),
        inset: true,
      ),
    ];
  }
}

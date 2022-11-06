import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter/scheduler.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

neumorphisBoxShadowShallow() {
  var brightness = SchedulerBinding.instance.window.platformBrightness;
  bool isDarkMode = brightness == Brightness.dark;
  if (isDarkMode) {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(2, 2),
      ),
      BoxShadow(
        color: Colors.white.withOpacity(0.2),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(-2, -2),
      ),
    ];
  } else {
    return [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(2, 2),
      ),
      BoxShadow(
        color: Colors.white.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 3,
        offset: const Offset(-2, -2),
      ),
    ];
  }
}

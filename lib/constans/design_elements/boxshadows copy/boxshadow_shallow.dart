import 'package:flutter/material.dart';


boxShadowShallow() {
  return BoxShadow(
    color: Colors.black.withOpacity(0.25),
    spreadRadius: 4,
    blurRadius: 4,
    offset: const Offset(2, 2),
  );
}

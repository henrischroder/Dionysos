import 'dart:async';

import 'package:flutter/material.dart';

class Spinner extends StatefulWidget {
  @override
  _SpinnerState createState() => new _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 2), (Timer t) {
      tap = !tap;
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey,
            gradient: LinearGradient(
              colors: [
                tap
                    ? Colors.black.withOpacity(0.6)
                    : Colors.white.withOpacity(0.1),
                tap
                    ? Colors.white.withOpacity(0.1)
                    : Colors.black.withOpacity(0.6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

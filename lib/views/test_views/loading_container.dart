import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late final Animation<Color?> _colorAnimation = ColorTween(
          begin: Colors.grey.withOpacity(0.1),
          end: Colors.grey.withOpacity(0.3))
      .animate(_controller);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        onTap: () {
          print(_controller.value);
          _controller.forward();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: LinearProgressIndicator(
              valueColor: _colorAnimation,
              backgroundColor: Colors.grey.withOpacity(0.1),
            ),
          ),
        ),
      )),
    );
  }
}

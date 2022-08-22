import 'package:flutter/material.dart';

class NeumorphismEventBoxWidget extends StatelessWidget {
  const NeumorphismEventBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Padding(
      padding: EdgeInsets.all(newHeight / 42),
      child: Container(
        height: newHeight / 2 + 30,
        width: width / 2 + 30,
        color: Colors.amber,
        child: Container(
          width: width / 2,
          height: newHeight / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            gradient: RadialGradient(
              center: Alignment.topLeft,
              radius: 2,
              colors: [
                Colors.grey.shade200,
                Colors.grey.shade300,
                Colors.grey.shade400,
                Colors.grey.shade400,
              ],
              stops: const [
                0.1,
                0.3,
                0.9,
                1,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(
                  3,
                  3,
                ),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(
                  -3,
                  -3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

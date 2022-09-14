import 'package:flutter/material.dart';

class WishListWidgetForSingleEvent extends StatefulWidget {
  const WishListWidgetForSingleEvent({Key? key}) : super(key: key);

  @override
  State<WishListWidgetForSingleEvent> createState() =>
      _WishListWidgetForSingleEventState();
}

class _WishListWidgetForSingleEventState
    extends State<WishListWidgetForSingleEvent> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: newHeight / 17,
          width: width * 0.6,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 168, 168, 168),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'Wunschliste',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

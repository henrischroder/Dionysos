import 'package:flutter/material.dart';

class MapWidgetForSingleEvent extends StatefulWidget {
  const MapWidgetForSingleEvent({Key? key}) : super(key: key);

  @override
  State<MapWidgetForSingleEvent> createState() =>
      _MapWidgetForSingleEventState();
}

class _MapWidgetForSingleEventState extends State<MapWidgetForSingleEvent> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              'Standort',
              style: TextStyle(
                color: Color.fromARGB(255, 236, 236, 236),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print('Karte');
          },
          child: Container(
            width: width,
            height: newHeight * 0.25,
            color: const Color.fromARGB(255, 42, 42, 42),
            child: const Text(
              'Karte',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

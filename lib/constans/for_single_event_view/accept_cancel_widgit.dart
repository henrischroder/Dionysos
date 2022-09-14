import 'package:flutter/material.dart';

class AcceptCancelWidget extends StatefulWidget {
  const AcceptCancelWidget({Key? key}) : super(key: key);

  @override
  State<AcceptCancelWidget> createState() => _AcceptCancelWidgetState();
}

class _AcceptCancelWidgetState extends State<AcceptCancelWidget> {
  bool accept = false;
  bool deni = false;
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            print(accept ? 'Nicht mehr Zugesagt' : 'Zusagen');
            setState(() {
              accept = !accept;
              deni = false;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              height: width / 6.5,
              width: width / 6.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 6.5),
                color: accept
                    ? Colors.green
                    : const Color.fromARGB(255, 236, 236, 236),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(4, 3),
                  ),
                ],
              ),
              child: Icon(
                Icons.check,
                size: 30,
                color: accept
                    ? const Color.fromARGB(255, 236, 236, 236)
                    : Colors.green,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            print(deni ? 'Nicht mehr Abgesagt' : 'Absagen');
            setState(() {
              deni = !deni;
              accept = false;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
              height: width / 6.5,
              width: width / 6.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width / 6.5),
                color: deni
                    ? Colors.red
                    : const Color.fromARGB(255, 236, 236, 236),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(4, 3),
                  ),
                ],
              ),
              child: Icon(
                Icons.cancel,
                size: 30,
                color: deni
                    ? const Color.fromARGB(255, 236, 236, 236)
                    : Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class LeaveGroupWidgetForSingleEvent extends StatefulWidget {
  const LeaveGroupWidgetForSingleEvent({Key? key}) : super(key: key);

  @override
  State<LeaveGroupWidgetForSingleEvent> createState() =>
      _LeaveGroupWidgetForSingleEventState();
}

class _LeaveGroupWidgetForSingleEventState
    extends State<LeaveGroupWidgetForSingleEvent> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return GestureDetector(
      onTap: () {
        print('Gruppe verlassen');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            width: width * 0.9,
            height: newHeight / 17,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: const Offset(4, 3),
                ),
              ],
            ),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.exit_to_app,
                    color: Color.fromARGB(255, 31, 31, 31),
                    size: 20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Gruppe verlassen',
                    style: TextStyle(
                      color: Color.fromARGB(255, 31, 31, 31),
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

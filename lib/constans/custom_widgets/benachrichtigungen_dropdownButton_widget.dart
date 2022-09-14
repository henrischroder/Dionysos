import 'package:flutter/material.dart';

class BenachrichtigungenDropdownButtonWidget extends StatefulWidget {
  const BenachrichtigungenDropdownButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BenachrichtigungenDropdownButtonWidget> createState() =>
      _BenachrichtigungenDropdownButtonWidgetState();
}

class _BenachrichtigungenDropdownButtonWidgetState
    extends State<BenachrichtigungenDropdownButtonWidget> {
  String dropdownValue = 'Alles';

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
          width: width * 0.9,
          height: newHeight / 17,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 236),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.speaker_notes,
                      color: Color.fromARGB(255, 31, 31, 31),
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Benachrichtigungen',
                      style: TextStyle(
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  elevation: 16,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                  dropdownColor: const Color.fromARGB(255, 236, 236, 236),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Alles',
                    'Nur Vibrationen',
                    'Keine',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NewPartyNeeded {
  final String titel;
  final String discription;
  final int start;
  final int? end;
  final bool inviteOnly;
  final double? longitude;
  final double? latitude;
  final String? picture;

  const NewPartyNeeded({
    required this.titel,
    required this.discription,
    required this.start,
    this.end = 6,
    required this.inviteOnly,
    this.longitude = 9.95112,
    this.latitude = 52.15077,
    this.picture = 'pic',
  });
}

class CreateNewPartyWidget extends StatefulWidget {
  const CreateNewPartyWidget({Key? key}) : super(key: key);

  @override
  State<CreateNewPartyWidget> createState() => _CreateNewPartyWidgetState();
}

class _CreateNewPartyWidgetState extends State<CreateNewPartyWidget> {
  late final TextEditingController _titel;
  late final TextEditingController _discription;
  late final TextEditingController _start;
  late final TextEditingController _end;
  late final TextEditingController _longitude;
  late final TextEditingController _latitude;
  late final TextEditingController _picture;

  @override
  void initState() {
    _titel = TextEditingController();
    _discription = TextEditingController();
    _start = TextEditingController();
    _end = TextEditingController();
    _longitude = TextEditingController();
    _latitude = TextEditingController();
    _picture = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _titel.dispose();
    _discription.dispose();
    _start.dispose();
    _end.dispose();
    _longitude.dispose();
    _latitude.dispose();
    _picture.dispose();
    super.dispose();
  }

  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            title: const Text('Create New Party'),
          ),
          textFieldContainer(_titel, 'Titel'),
          textFieldContainer(_discription, 'Beschreibung'),
          textFieldContainer(_start, 'Am...'),
          textFieldContainer(_start, 'Von..'),
          textFieldContainer(_end, 'Bis...'),
          textFieldContainer(_longitude, 'Longitude'),
          textFieldContainer(_latitude, 'Latitude'),
          textFieldContainer(_picture, 'Bild'),
        ],
      ),
    );
  }

  Widget textFieldContainer(controller, hinttext) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(hintText: hinttext),
    );
  }
}

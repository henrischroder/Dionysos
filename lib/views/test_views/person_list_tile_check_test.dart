import 'package:flutter/material.dart';

class ListTileCheckTest extends StatefulWidget {
  const ListTileCheckTest({
    this.creator = false,
    this.participantsStatus,
    this.relationStatus = false,
    this.name = 'name',
    this.userName = 'username',
    required this.onTap,
    required this.selected,
    super.key,
  });
  final bool creator;
  final bool? participantsStatus;
  final bool relationStatus;
  final VoidCallback onTap;
  final String name;
  final String userName;
  final bool selected;

  @override
  State<ListTileCheckTest> createState() => _ListTileCheckTestState();
}

//TODO Colors and selected and backend
class _ListTileCheckTestState extends State<ListTileCheckTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(
                  color: Color.fromARGB(255, 117, 117, 117), width: 0.5))),
      child: ListTile(
        onTap: widget.onTap,
       
        title: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: widget.name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: widget.selected ? Colors.amber : Colors.black),
            ),
            TextSpan(text: widget.creator ? '  (admin)' : '')
          ]),
        ),
        subtitle: Text(widget.userName),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                  color: widget.participantsStatus == null
                      ? Colors.transparent
                      : widget.participantsStatus!
                          ? Colors.green
                          : Colors.red,
                  width: 3),
              boxShadow: [
                BoxShadow(
                    color: widget.participantsStatus == null
                        ? Colors.transparent
                        : widget.participantsStatus!
                            ? Colors.green
                            : Colors.red,
                    blurRadius: 10,
                    spreadRadius: 3)
              ]),
        ),
        trailing: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn,
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color.fromARGB(255, 75, 75, 75),
            ),
            color: widget.selected ? Colors.amber : Colors.transparent,
            boxShadow: const [],
          ),
        ),
      ),
    );
  }
}

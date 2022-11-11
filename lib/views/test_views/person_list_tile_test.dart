import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_boxshadow_shallow.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_innershadow.dart';

class ListTileTest extends StatefulWidget {
  const ListTileTest({
    this.creator = false,
    this.participantsStatus,
    this.relationStatus = true,
    this.name = 'name',
    this.userName = 'username',
    super.key,
  });
  final bool creator;
  final bool? participantsStatus;
  final bool relationStatus;

  final String name;
  final String userName;

  @override
  State<ListTileTest> createState() => _ListTileTestState();
}

class _ListTileTestState extends State<ListTileTest> {
  bool addRequest = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: widget.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
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
      trailing: widget.relationStatus
          ? const RightArrowIcon()
          : GestureDetector(
              onTap: () {
                setState(() {
                  addRequest ? null : addRequest = true;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                curve: Curves.fastOutSlowIn,
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: addRequest ? Colors.grey : Colors.white,
                  boxShadow: addRequest
                      ? neumorphisInnerShadow()
                      : neumorphisBoxShadowShallow(),
                ),
                child: Center(
                    child: addRequest
                        ? const Text(
                            'Angefragt',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 126, 126, 126),
                            ),
                          )
                        : const Text(
                            'Add +',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
              ),
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/calendar_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/event_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';

class CustomTaskBar extends StatelessWidget {
  const CustomTaskBar({
    Key? key,
    required this.highlightProfil,
    required this.highlightEvent,
    required this.highlightCalendar,
  }) : super(key: key);
  final bool highlightProfil;
  final bool highlightEvent;
  final bool highlightCalendar;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
                onTap: () {
                  print('profil_view'); // Weiterleiten zum profil_view
                },
                child: highlightProfil
                    ? const ProfilIcon()
                    : const ProfilIcon(
                        iconColor: Colors.grey,
                      )),
            GestureDetector(
                onTap: () {
                  print('party_view'); // Weiterleiten zum Party_View
                },
                child: highlightEvent
                    ? const EventIcon()
                    : const EventIcon(
                        iconColor: Colors.grey,
                      )),
            GestureDetector(
                onTap: () {
                  print('calendar_view'); // Weiterleiten zum Calendar_View
                },
                child: highlightCalendar
                    ? const CalendarIcon()
                    : const CalendarIcon(
                        iconColor: Colors.grey,
                      )),
          ],
        ),
      ),
    );
  }
}

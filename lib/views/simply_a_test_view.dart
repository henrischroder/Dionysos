import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/custom_icons/calendar_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/event_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';
import 'package:projekt_dionysos/views/main_views/event_view.dart';
import 'package:projekt_dionysos/views/main_views/new_party_view.dart';
import 'package:projekt_dionysos/views/main_views/profil_view.dart';
import 'package:projekt_dionysos/views/main_views/settings_view.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Karte',
      style: optionStyle,
    ),
    ProfilView(),
    EventView(
      partyTitel: [
        'House Party',
        'Geburtstag',
        'Spiele Abend',
        'Bierpong Turnier',
        'Liebe machen',
      ],
      partycreater: [
        'Gilbert',
        'Henri',
        'Fjore',
        'Anton',
        'Tim Jörns',
      ],
      discription: [
        'Absturz',
        'Will Geld',
        'Monopoly',
        'Saufen',
        'Bangen bis wir umfallen und Geld',
      ],
      boxColor: [
        Colors.blueGrey,
        Colors.red,
        Colors.yellow,
        Colors.green,
        Colors.pink,
      ],
      isNew: [
        false,
        false,
        true,
        false,
        true,
      ],
      newMessage: [
        false,
        true,
        false,
        true,
        false,
      ],
      friends: [
        'Anton',
        'Gilbert',
        'Fjore',
        'Elvis',
        'Mick',
        'Tim',
        'Emma',
        'Marius',
        'Ari',
        'Lilly',
        'Carla',
        'Carlo',
        'Luca',
        'Jonah',
        'Erik',
      ],
    ),
    Text(
      'Kalender',
      style: optionStyle,
    ),
    SettingsView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Karte',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profil',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake_rounded),
            label: 'Event',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Kalendar',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

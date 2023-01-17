import 'package:flutter/material.dart';
import 'package:projekt_dionysos/views/test_views/profil_view_test.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Map',
      style: optionStyle,
    ),
    Text(
      'Index 1: Event',
      style: optionStyle,
    ),
    ProfilScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: Colors.grey.shade700.withOpacity(0.5)),
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.pin_drop),
                    label: 'Map',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.event),
                    label: 'Events',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profil',
                  ),
                ],
                elevation: 0,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                onTap: _onItemTapped,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

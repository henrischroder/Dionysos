import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.appBarTitle}) : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black.withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  appBarTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  print('Profil');
                },
                child: const Icon(
                  Icons.account_circle_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Suchen');
                },
                child: const Icon(
                  Icons.search_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  print('Freunde finden');
                },
                child: const Icon(
                  Icons.group_add_sharp,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Einstellungen');
                },
                child: const Icon(
                  Icons.more_horiz,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

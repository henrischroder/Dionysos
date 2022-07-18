import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar3.dart';

class ProfilView extends StatefulWidget {
  const ProfilView({Key? key}) : super(key: key);

  @override
  State<ProfilView> createState() => _ProfilViewState();
}

class _ProfilViewState extends State<ProfilView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomAppbar3(
          appBarTitle: 'Profil',
        ),
        SizedBox(
          height: 743,
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  print('change Profil Pic'); // Profilbild ändern (overlay)
                },
                child: const Icon(
                  Icons.account_circle_rounded,
                  size: 100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('change Profil name'); // Profilnamen ändern (overlay)
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Profilnamen',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Freunde',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Freunde adden'); // Freunde adden (friends_adden_view)
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.group_add_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            '    Freunde adden',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Meine Freund'); // Meine Freunde (myfriends_view)
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.group_sharp,
                            color: Colors.white,
                          ),
                          Text(
                            '    Meine Freunde',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Archiv',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Foto Archiv'); // Foto Archiv (photo_archiv_view)
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.photo_library_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            '    Foto Archiv',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Party Archiv'); // Party Archiv (party_archiv_view)
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.event_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            '    Party Archiv',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class RegisterProfilpicView extends StatefulWidget {
  const RegisterProfilpicView({Key? key}) : super(key: key);

  @override
  State<RegisterProfilpicView> createState() => _RegisterProfilpicViewState();
}

class _RegisterProfilpicViewState extends State<RegisterProfilpicView> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(
            appBarTitle: 'Wähle ein Profilbild',
            appBarColor: Colors.white,
            appBarTitleColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(width / 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Profilbild',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print('Profilpic');
                    },
                    child: const ProfilIcon(
                      iconColor: Color.fromARGB(255, 51, 51, 51),
                      iconSize: 200,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Deine Freunde werden anhand eines Profilbildes dich schneller finden und wiedererkennen können.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight / 7),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print('Weiter');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 125, 206, 117),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(4, 3),
                            ),
                          ],
                        ),
                        height: newHeight / 16,
                        width: width * 0.5,
                        child: const Center(
                          child: Text(
                            'Weiter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Überspringen');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'überspringen',
                        style: TextStyle(color: Colors.blue),
                      ),
                      RightArrowIcon(
                        iconColor: Colors.blue,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';

class NewSettingsView extends StatefulWidget {
  const NewSettingsView({Key? key}) : super(key: key);

  @override
  State<NewSettingsView> createState() => _NewSettingsViewState();
}

class _NewSettingsViewState extends State<NewSettingsView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(appBarTitle: 'Einstellungen'),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  print('Mein Account');
                },
                child: Container(
                  height: 470,
                  width: width / 3 * 2,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'MEIN ACCOUNT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Suppoert');
                    },
                    child: Container(
                      height: 235,
                      width: width / 3,
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        'SUPPORT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Mehr Einstellungen');
                    },
                    child: Container(
                      height: 235,
                      width: width / 3,
                      color: Colors.pink,
                      child: const Center(
                          child: Text(
                        'MEHR EINSTELLUNGEN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Feedback');
                    },
                    child: Container(
                      height: 219,
                      width: width / 3,
                      color: Colors.blue,
                      child: const Center(
                          child: Text(
                        'FEEDBACK',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: width / 3,
                    color: Colors.green,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 110,
                    width: width / 3,
                    color: Colors.purple,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Mehr Infos');
                    },
                    child: Container(
                      height: 219,
                      width: width / 3,
                      color: Colors.pink,
                      child: const Center(
                          child: Text(
                        'MEHR INFOS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  print('Account Aktionen');
                },
                child: Container(
                  height: 329,
                  width: width / 3,
                  color: Colors.yellow,
                  child: const Center(
                      child: Text(
                    'ACCOUNT AKTIONEN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

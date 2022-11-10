import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_boxshadow_deep.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_boxshadow_shallow.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: ListView(
        children: [
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: newHeight * 0.05),
            child: const Text(
              'Profil',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          )),
          Container(
            height: width * 0.6,
            width: width * 0.6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              boxShadow: neumorphisBoxShadowDeep(),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: newHeight * 0.02,
                bottom: newHeight * 0.005,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.transparent,
                    size: 20,
                  ),
                  Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    size: 20,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: newHeight * 0.04,
                top: newHeight * 0.005,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.transparent,
                    size: 20,
                  ),
                  Text(
                    'Nutzername',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Icon(
                    Icons.settings,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(width * 0.15),
              ),
              color: Colors.grey,
              boxShadow: neumorphisBoxShadowDeep(),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: newHeight * 0.04,
                      bottom: newHeight * 0.01,
                      left: width * 0.1,
                    ),
                    child: const Text(
                      'Events',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Event planen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.event),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Event Vorlagen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.event_available),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: newHeight * 0.03,
                      bottom: newHeight * 0.01,
                      left: width * 0.1,
                    ),
                    child: const Text(
                      'Freunde',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Freunde adden',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.group_add_rounded),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 7,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: newHeight / 14,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: Colors.white, width: 1),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(right: width * 0.01),
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.01),
                                    child: Container(
                                      height: newHeight / 18,
                                      width: newHeight / 18,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                    ),
                                  );
                                }),
                          ),
                        ),
                        Container(
                          height: newHeight / 14,
                          child: Center(
                            child: ListTile(
                              title: Text(
                                'Meine Freunde',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.group),
                              trailing: RightArrowIcon(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: newHeight * 0.03,
                      bottom: newHeight * 0.01,
                      left: width * 0.1,
                    ),
                    child: const Text(
                      'Archiv',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Mein Archiv',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.archive),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Meine Fotos',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.photo_album),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: newHeight * 0.03,
                      bottom: newHeight * 0.01,
                      left: width * 0.1,
                    ),
                    child: const Text(
                      'Statistiken',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight * 0.01),
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 14,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: neumorphisBoxShadowShallow(),
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text(
                          'Meine Statistik',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(Icons.auto_graph),
                        trailing: RightArrowIcon(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

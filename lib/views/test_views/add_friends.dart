import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:projekt_dionysos/constans/custom_icons/down_arrow_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/left_arrow_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/up_arrow_icon.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_innershadow.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';

class AddFriendsView extends StatefulWidget {
  const AddFriendsView({super.key});

  @override
  State<AddFriendsView> createState() => _AddFriendsViewState();
}

class _AddFriendsViewState extends State<AddFriendsView> {
//TODO Farben, Schatten, Backend

  List<String> request = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
  ];

  List<String> suggestions = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
  ];

  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          ListView(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(newHeight * 0.04),
                  child: Text(
                    'Freunde',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: newHeight * 0.02),
                child: Center(
                  child: Container(
                    width: width * 0.8,
                    height: newHeight / 18,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(newHeight / 32),
                      boxShadow: neumorphisInnerShadow(),
                    ),
                    child: const Text('Suchen'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: newHeight * 0.02, horizontal: width * 0.05),
                  child: Text(
                    'Freundschaftanfragen',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: width * 0.9,
                  child: request.length > 5
                      ? Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 42, 42, 42),
                                  borderRadius: BorderRadius.circular(20)),
                              child: AnimatedContainer(
                                curve: Curves.easeOut,
                                duration: const Duration(seconds: 1),
                                height: showMore
                                    ? newHeight / 15 * request.length
                                    : newHeight / 15 * 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(
                                    children: [
                                      ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: request.length,
                                        itemBuilder: (context, index) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              border: Border.symmetric(
                                                horizontal: BorderSide(
                                                    width: 0.5,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                            height: newHeight / 15,
                                            child: ListTileTest(
                                              name: request[index],
                                              relationStatus: false,
                                            ),
                                          );
                                        },
                                      ),
                                      IgnorePointer(
                                        child: AnimatedContainer(
                                          duration: const Duration(seconds: 1),
                                          curve: Curves.easeOut,
                                          decoration: BoxDecoration(
                                            boxShadow: neumorphisInnerShadow(),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                            gradient: LinearGradient(
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              colors: [
                                                const Color.fromARGB(
                                                        255, 31, 31, 31)
                                                    .withOpacity(0.0),
                                                const Color.fromARGB(
                                                        255, 31, 31, 31)
                                                    .withOpacity(
                                                        showMore ? 0.0 : 0.8),
                                              ],
                                              stops: const [0.0, 1.0],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showMore = !showMore;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeOut,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      showMore
                                          ? const UpArrowIcon(
                                              iconSize: 20,
                                            )
                                          : const DownArrowIcon(
                                              iconSize: 20,
                                            ),
                                      Text(
                                        showMore
                                            ? 'Weniger Anzeigen'
                                            : 'Mehr Anzeigen',
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 236, 236, 236),
                                          fontSize: 15,
                                        ),
                                      ),
                                      showMore
                                          ? const UpArrowIcon(
                                              iconSize: 20,
                                            )
                                          : const DownArrowIcon(
                                              iconSize: 20,
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 42, 42, 42),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: newHeight / 15 * request.length,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: request.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.symmetric(
                                        horizontal: BorderSide(
                                            width: 0.5, color: Colors.grey),
                                      ),
                                    ),
                                    height: newHeight / 15,
                                    child: ListTileTest(
                                      name: request[index],
                                      relationStatus: false,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: newHeight * 0.02, horizontal: width * 0.05),
                  child: Text(
                    'Freunde finden',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: width * 0.9,
                  height: newHeight / 15 * suggestions.length,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    boxShadow: neumorphisInnerShadow(),
                  ),
                  child: ListView.builder(
                    itemCount: suggestions.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            horizontal:
                                BorderSide(width: 0.5, color: Colors.grey),
                          ),
                        ),
                        height: newHeight / 15,
                        child: ListTileTest(
                          name: suggestions[index],
                          relationStatus: false,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(newHeight * 0.04),
            child: const LeftArrowIcon(
              iconColor: Colors.red,
              iconSize: 40,
            ),
          ),
        ],
      ),
    );
  }
}

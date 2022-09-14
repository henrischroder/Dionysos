import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/down_arrow_icon.dart';

import 'package:projekt_dionysos/constans/custom_icons/up_arrow_icon.dart';
import 'package:projekt_dionysos/constans/custom_widgets/neumorphism_event_box_widget.dart';

class AnotherTestView extends StatefulWidget {
  const AnotherTestView({
    Key? key,
  }) : super(key: key);

  @override
  State<AnotherTestView> createState() => _AnotherTestViewState();
}

class _AnotherTestViewState extends State<AnotherTestView> {
  bool dropOut = false;
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: newHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 2,
                colors: [
                  Colors.grey.shade200,
                  Colors.grey.shade300,
                  Colors.grey.shade400,
                  Colors.grey.shade400,
                ],
                stops: const [
                  0.1,
                  0.3,
                  0.9,
                  1,
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(newHeight / 42),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: Container(
                          height: newHeight / 17,
                          width: width * 0.55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: const [
                                Icon(Icons.search),
                                Text('Suchen')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(newHeight / 42),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: Container(
                          height: newHeight / 17,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.filter_list),
                                Text('Filter')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width,
                height: newHeight / 2 + 65,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const NeumorphismEventBoxWidget();
                  },
                ),
              ),
              Container(
                width: newHeight / 16,
                height: newHeight / 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1,
                    colors: [
                      Colors.grey.shade200,
                      Colors.grey.shade300,
                      Colors.grey.shade400,
                      Colors.grey.shade400,
                    ],
                    stops: const [
                      0.1,
                      0.3,
                      0.9,
                      1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(newHeight / 32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        3,
                        3,
                      ),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(
                        -3,
                        -3,
                      ),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: newHeight / 28,
                ),
              ),
            ],
          ),
          SizedBox(
            height: newHeight,
            width: width,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  dropOut = !dropOut;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    width: width / 5,
                    child: dropOut
                        ? const DownArrowIcon(
                            iconSize: 35,
                          )
                        : const UpArrowIcon(
                            iconSize: 35,
                          ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                    width: width / 5,
                    height: dropOut ? newHeight / 5 : 0,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(newHeight / 32),
                        topRight: Radius.circular(newHeight / 32),
                      ),
                    ),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.group_add_rounded,
                                color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                'Event erstellen',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.archive,
                                color: Colors.white,
                                size: 35,
                              ),
                              Text(
                                'Archiv',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

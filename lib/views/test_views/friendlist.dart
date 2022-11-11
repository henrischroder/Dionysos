import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:projekt_dionysos/constans/custom_icons/left_arrow_icon.dart';

import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_innershadow.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(newHeight * 0.04),
                child: Text(
                  'Freunde',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
              Center(
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
              Container(
                width: width * 0.9,
                height: newHeight * 0.8,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    boxShadow: neumorphisInnerShadow()),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTileTest();
                  },
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

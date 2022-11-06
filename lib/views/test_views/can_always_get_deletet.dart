import 'package:flutter/material.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';

class CanGetDeleted extends StatefulWidget {
  const CanGetDeleted({super.key});

  @override
  State<CanGetDeleted> createState() => _CanGetDeletedState();
}

class _CanGetDeletedState extends State<CanGetDeleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Container(
                color: Colors.grey,
                height: 400,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTileTest(
                      relationStatus: false,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_boxshadow_shallow.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';

class CanGetDeleted extends StatefulWidget {
  const CanGetDeleted({super.key});

  @override
  State<CanGetDeleted> createState() => _CanGetDeletedState();
}

class _CanGetDeletedState extends State<CanGetDeleted> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    timeDilation = 5;
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          height: newHeight * 0.7,
          child: Scaffold(
            body: Center(
              child: CanAlwaysGetDeletedStack(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return CanAlwaysGetDeletedGrid();
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CanAlwaysGetDeletedGrid extends StatelessWidget {
  const CanAlwaysGetDeletedGrid({super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: width * 0.05,
                crossAxisSpacing: width * 0.05,
                childAspectRatio: 0.55),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Center(
                  child: CanAlwaysgetdeletedWidget(tag: index.toString()));
            },
          ),
        ),
      ),
    );
  }
}

class CanAlwaysGetDeletedListView extends StatelessWidget {
  const CanAlwaysGetDeletedListView({super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return SizedBox(
      width: width,
      height: newHeight * 0.7,
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: width,
            height: newHeight * 0.5,
            child: Center(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CanAlwaysgetdeletedWidget(
                      tag: index.toString(),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}

class CanAlwaysGetDeletedStack extends StatelessWidget {
  const CanAlwaysGetDeletedStack({required this.onTap, super.key});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(20, 20),
            child: const CanAlwaysgetdeletedWidget(tag: '2'),
          ),
          Transform.translate(
            offset: Offset(0, 0),
            child: const CanAlwaysgetdeletedWidget(tag: '1'),
          ),
          Transform.translate(
            offset: Offset(-20, -20),
            child: const CanAlwaysgetdeletedWidget(tag: '0'),
          ),
        ],
      ),
    );
  }
}

class CanAlwaysgetdeletedWidget extends StatelessWidget {
  const CanAlwaysgetdeletedWidget({
    required this.tag,
    super.key,
  });
  final String tag;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Hero(
      tag: tag,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.00),
            child: Container(
              height: newHeight / 2,
              width: width / 2,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: neumorphisBoxShadowShallow()),
            ),
          ),
        ),
      ),
    );
  }
}

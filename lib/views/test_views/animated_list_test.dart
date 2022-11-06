import 'package:flutter/material.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_check_test.dart';

class AnimatedListSample extends StatefulWidget {
  const AnimatedListSample({super.key});

  @override
  State<AnimatedListSample> createState() => _AnimatedListSampleState();
}

class _AnimatedListSampleState extends State<AnimatedListSample> {
  final _myListKey = GlobalKey<AnimatedListState>();

  List<String> _newList = [];
  final List<String> _originalList = [
    'Gilbert',
    'Henri',
    'Max',
    'Johannes',
    'Mick',
  ];

  int nextIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: AnimatedList(
              scrollDirection: Axis.horizontal,
              key: _myListKey,
              initialItemCount: _newList.length,
              itemBuilder: (context, index, animation) {
                return CustumInsertSlidTransition(
                  animation: animation,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PickedParticipantsWidget(
                      name: _newList[index],
                      onTap: () {
                        _myListKey.currentState!.removeItem(
                          index,
                          (context, animation) => customRemoveSlidTransition(
                            context,
                            animation,
                            _originalList[index],
                          ),
                        );
                        _newList.removeAt(index);
                        nextIndex--;
                        setState(() {});
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
                itemCount: _originalList.length,
                itemBuilder: (context, index) {
                  return ListTileCheckTest(
                    onTap: () {
                      if (_newList.contains(_originalList[index])) {
                        _myListKey.currentState!.removeItem(
                            _newList.indexWhere(
                              (element) => element == _originalList[index],
                            ),
                            (context, animation) => customRemoveSlidTransition(
                                context, animation, _originalList[index]));
                        _newList.removeAt(
                          _newList.indexWhere(
                            (element) => element == _originalList[index],
                          ),
                        );
                        nextIndex--;
                      } else {
                        _newList.insert(nextIndex, _originalList[index]);
                        _myListKey.currentState!.insertItem(nextIndex);
                        nextIndex++;
                      }

                      print(_newList);
                      print(nextIndex);
                      setState(() {});
                    },
                    selected: _newList.contains(_originalList[index]),
                    name: _originalList[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class CustumInsertSlidTransition extends AnimatedWidget {
  const CustumInsertSlidTransition({
    Key? key,
    required Animation<double> animation,
    required this.child,
  }) : super(key: key, listenable: animation);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Animation<double> animation = listenable as Animation<double>;

    late final Animation<Offset> _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: animation,
      curve: Curves.fastOutSlowIn,
    ));

    return SlideTransition(
      position: _offsetAnimation,
      child: child,
    );
  }
}

Widget customRemoveSlidTransition(
    BuildContext context, animation, String text) {
  return TweenAnimationBuilder(
    tween: Tween<double>(begin: 1, end: 0),
    duration: const Duration(milliseconds: 200),
    builder: (context, double value, child) {
      return Opacity(
        opacity: value,
        child: child,
      );
    },
    child: SizeTransition(
      axis: Axis.horizontal,
      sizeFactor: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset(0, 0),
        ).animate(animation),
        child: SizedBox(
          // Actual widget to display
          height: 128.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: PickedParticipantsWidget(name: text),
          ),
        ),
      ),
    ),
  );
}

class PickedParticipantsWidget extends StatelessWidget {
  const PickedParticipantsWidget({
    required this.name,
    this.username = 'username',
    this.onTap,
    super.key,
  });

  final String name;
  final String username;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Stack(
            children: [
              Container(
                width: 75,
                height: 75,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
              ),
              SizedBox(
                width: 75,
                height: 75,
                child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 30,
                    )),
              ),
            ],
          ),
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(username), //TODO add Username
      ],
    );
  }
}

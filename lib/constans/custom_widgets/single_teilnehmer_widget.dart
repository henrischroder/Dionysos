import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class SingleTeilnehmerWidget extends StatelessWidget {
  const SingleTeilnehmerWidget({
    Key? key,
    required this.userName,
    required this.isFriend,
  }) : super(key: key);
  final String userName;
  final bool isFriend;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    if (isFriend == false) {
      return GestureDetector(
        onTap: () {
          print(userName);
        },
        child: SizedBox(
          height: newHeight / 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 20,
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      userName,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  print('Add');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 1.0),
                          child: Icon(
                            Icons.add_rounded,
                            size: 20,
                            color: Color.fromARGB(255, 42, 42, 42),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 2.0),
                          child: Text(
                            'Adden',
                            style: TextStyle(
                              color: Color.fromARGB(255, 42, 42, 42),
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        height: newHeight / 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print(userName);
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      size: 20,
                      color: Color.fromARGB(255, 236, 236, 236),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      userName,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 236, 236, 236),
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const RightArrowIcon(),
          ],
        ),
      );
    }
  }
}

import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class SingleTeilnehmerWidget extends StatelessWidget {
  const SingleTeilnehmerWidget({
    Key? key,
    required this.userName,
    required this.isFriend,
    required this.isAdmin,
  }) : super(key: key);
  final String userName;
  final bool isFriend;
  final bool isAdmin;

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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  isAdmin
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Admin',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : const SizedBox(),
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
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: const Offset(4, 3),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6),
                      child: Center(
                        child: Text(
                          'Add+',
                          style: TextStyle(
                            color: Color.fromARGB(255, 42, 42, 42),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  isAdmin
                      ? const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Admin',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : const SizedBox(),
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

import 'package:flutter/material.dart';

class PrivatPublicWidget extends StatelessWidget {
  const PrivatPublicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
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
              height: 30,
              width: 110,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('Privat');
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 30,
                  width: 55,
                  //color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text(
                    'Privat',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Public');
                },
                child: Container(
                  height: 30,
                  width: 55,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text(
                    'Public',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

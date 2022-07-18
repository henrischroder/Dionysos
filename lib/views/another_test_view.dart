import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnotherTestView extends StatelessWidget {
  const AnotherTestView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  width: width * 0.95,
                  height: width * 1.25,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: width / 12 * 11,
                            height: width / 12 * 11,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                child: const Text(
                                  'Houseparty',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                child: const Text(
                                  'data',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 2.0),
                                child: const Text(
                                  'data',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: width * 0.95 / 2,
                            child: Center(
                              child: Container(
                                width: width * 0.95 / 4,
                                height: width * 0.95 / 5,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '23',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        'Teilnehmer',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '16.07.2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

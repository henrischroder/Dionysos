import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({
    Key? key,
    required this.boxColor,
    required this.partyTitel,
    required this.ersteller,
    required this.discription,
    // required this.startTime,
  }) : super(key: key);
  final Color boxColor;
  final String partyTitel;
  final String discription;
  final String ersteller;
  //final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print('Event');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: boxColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(4, 3),
              ),
            ],
          ),
          height: 400,
          width: 200,
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // color: Colors.red,
                    constraints:
                        const BoxConstraints(minWidth: 200, minHeight: 40),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '24.06.2022',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.blue,
                    constraints:
                        const BoxConstraints(minWidth: 200, minHeight: 328),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            partyTitel,
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'Von: $ersteller',
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            discription,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                  // const Text('24.06.2022'),
                  // Text(partyTitel),
                  //Text('Von: $ersteller'),
                  // Text(discription),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

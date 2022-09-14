import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/views/single_event_view.dart';

class NewBoxContainer extends StatelessWidget {
  const NewBoxContainer({
    Key? key,
    required this.boxColor,
    required this.partyTitel,
    required this.ersteller,
    required this.discription,
    required this.isNew,
    required this.newMessage,
    // required this.startTime,
  }) : super(key: key);
  final Color boxColor;
  final String partyTitel;
  final String discription;
  final String ersteller;
  final bool isNew;
  final bool newMessage;
  //final DateTime startTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SingleEventView(
                participans: [
                  'Anton',
                  'Gilbert',
                  'Fjore',
                  'Elvis',
                  'Mick',
                  'Tim',
                  'Emma',
                  'Marius',
                  'Ari',
                  'Lilly',
                  'Carla',
                  'Carlo',
                  'Luca',
                  'Jonah',
                  'Erik',
                ],
                isFriend: [
                  true,
                  true,
                  true,
                  true,
                  true,
                  true,
                  true,
                  true,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                ],
                isAdmin: [
                  true,
                  true,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                  false,
                ],
                accompaniment: true,
                acceptcancel: true,
                locationavalible: true,
                wishlist: true,
              ),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: boxColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 15,
                    offset: Offset(-5, -5),
                  ),
                ],
              ),
              height: 400,
              width: 200,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  /*  Container(
                                      decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,                                // hier Bild einfügen
                        image: AssetImage('.....'),
                      ),
                                      ),
                                    ), */
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 31, 31, 31)
                                .withOpacity(0.0),
                            const Color.fromARGB(255, 31, 31, 31),
                          ],
                          stops: const [
                            0.0,
                            1.0
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // color: Colors.red,
                          constraints: const BoxConstraints(
                              minWidth: 200, minHeight: 40),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '24.06.2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  partyTitel,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  'Von: $ersteller',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(
                                  discription,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const Text('24.06.2022'),
                        // Text(partyTitel),
                        //Text('Von: $ersteller'),
                        // Text(discription),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(150, -5),
              child: isNew
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          child: const Text(
                            'New',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  : newMessage
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 5,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              width: 60,
                              height: 30,
                              alignment: Alignment.center,
                              child: const Text(
                                'New',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

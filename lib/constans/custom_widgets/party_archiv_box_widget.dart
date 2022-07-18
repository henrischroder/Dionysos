import 'package:flutter/material.dart';

class PartyArchivBoxWidget extends StatelessWidget {
  const PartyArchivBoxWidget({
    Key? key,
    required this.boxColor,
    required this.partyTitel,
    required this.discription,
    required this.ersteller,
  }) : super(key: key);

  final Color boxColor;
  final String partyTitel;
  final String discription;
  final String ersteller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: boxColor, // Farbe entfernen wenn Bild eingefügt wurde
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
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black,
                  ],
                  stops: const [
                    0.0,
                    1.0
                  ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  partyTitel,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'von: $ersteller',
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  discription,
                  maxLines: 1,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
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

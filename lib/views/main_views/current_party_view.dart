import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/custom_widgets/box_container.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar.dart';

class CurrentPartyView extends StatefulWidget {
  const CurrentPartyView({Key? key}) : super(key: key);

  @override
  State<CurrentPartyView> createState() => _CurrentPartyViewState();
}

class _CurrentPartyViewState extends State<CurrentPartyView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(appBarTitle: 'Current Partys'),
        Padding(
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
        ),
        SizedBox(
          height: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              BoxContainer(
                boxColor: Colors.blueGrey,
                partyTitel: 'House Party',
                ersteller: 'Gilbert',
                discription: 'fun fun fun',
              ),
              BoxContainer(
                boxColor: Colors.red,
                partyTitel: 'Geburtstag',
                ersteller: 'Henri',
                discription: 'Will Geld',
              ),
              BoxContainer(
                boxColor: Colors.yellow,
                partyTitel: 'Spiele Abend',
                ersteller: 'Fjore',
                discription: 'Monopoly',
              ),
              BoxContainer(
                boxColor: Colors.green,
                partyTitel: 'Bierpong Turnier',
                ersteller: 'Anton',
                discription: 'Saufen',
              ),
            ],
          ),
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        )
      ],
    );
  }
}

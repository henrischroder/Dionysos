import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar.dart';
import 'package:projekt_dionysos/constans/custom_taskbar.dart';

import 'package:projekt_dionysos/constans/custom_widgets/new_box_container.dart';
import 'package:projekt_dionysos/constans/custom_widgets/privat_public_widget.dart';

class NewPartyView extends StatefulWidget {
  const NewPartyView({Key? key}) : super(key: key);

  @override
  State<NewPartyView> createState() => _NewPartyViewState();
}

class _NewPartyViewState extends State<NewPartyView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomAppBar(
          appBarTitle: 'New Partys',
        ),
        const PrivatPublicWidget(),
        SizedBox(
          height: 400,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              NewBoxContainer(
                boxColor: Colors.blueGrey,
                partyTitel: 'House Party',
                ersteller: 'Gilbert',
                discription: 'fun fun fun',
              ),
              NewBoxContainer(
                boxColor: Colors.red,
                partyTitel: 'Geburtstag',
                ersteller: 'Henri',
                discription: 'Will Geld',
              ),
              NewBoxContainer(
                boxColor: Colors.yellow,
                partyTitel: 'Spiele Abend',
                ersteller: 'Fjore',
                discription: 'Monopoly',
              ),
              NewBoxContainer(
                boxColor: Colors.green,
                partyTitel: 'Bierpong Turnier',
                ersteller: 'Anton',
                discription: 'Saufen',
              ),
              NewBoxContainer(
                boxColor: Colors.pink,
                partyTitel: 'Liebe machen',
                ersteller: 'Tim Jörns',
                discription: 'Bangen bis wir umfallen und Geld',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar.dart';
import 'package:projekt_dionysos/constans/custom_taskbar.dart';

import 'package:projekt_dionysos/constans/custom_widgets/new_box_container.dart';
import 'package:projekt_dionysos/constans/custom_widgets/privat_public_widget.dart';

class NewPartyView extends StatelessWidget {
  final List<String> partyTitel;
  final List<String> partycreater;
  final List<String> discription;
  final List<Color> boxColor;

  const NewPartyView({
    Key? key,
    required this.partyTitel,
    required this.partycreater,
    required this.discription,
    required this.boxColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomAppBar(
          appBarTitle: 'New Partys',
        ),
        const PrivatPublicWidget(),
        SizedBox(
          height: 400,
          width: width,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: partyTitel.length,
            itemBuilder: (context, index) {
              return NewBoxContainer(
                boxColor: boxColor[index],
                partyTitel: partyTitel[index],
                ersteller: partycreater[index],
                discription: discription[index],
              );
            },
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

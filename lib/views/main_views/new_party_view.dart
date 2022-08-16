import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar.dart';
import 'package:projekt_dionysos/constans/custom_taskbar.dart';

import 'package:projekt_dionysos/constans/custom_widgets/new_box_container.dart';
import 'package:projekt_dionysos/constans/custom_widgets/privat_public_widget.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';

class NewPartyView extends StatelessWidget {
  final List<String> partyTitel;
  final List<String> partycreater;
  final List<String> discription;
  final List<Color> boxColor;
  final List<bool> isNew;
  final List<bool> newMessage;
  final List<String> friends;

  const NewPartyView({
    Key? key,
    required this.partyTitel,
    required this.partycreater,
    required this.discription,
    required this.boxColor,
    required this.isNew,
    required this.newMessage,
    required this.friends,
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
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: newHeight / 17,
                width: width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(4, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [Icon(Icons.search), Text('Suchen')],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: newHeight / 17,
                width: width * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(4, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Icon(Icons.filter_list), Text('Filter')],
                  ),
                ),
              ),
            ),
          ],
        ),
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
                isNew: isNew[index],
                newMessage: newMessage[index],
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CreatePartyParticipantsView(
                    friends: friends,
                  ),
                ),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

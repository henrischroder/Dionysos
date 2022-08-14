import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/constans/custom_widgets/new_box_container.dart';

class NewPartyArchivView extends StatefulWidget {
  const NewPartyArchivView(
      {required this.partyTitel,
      required this.ersteller,
      required this.dicription,
      required this.boxColor,
      required this.years,
      Key? key})
      : super(key: key);
  final List<String> partyTitel;
  final List<String> ersteller;
  final List<String> dicription;
  final List<Color> boxColor;
  final List<String> years;

  @override
  State<NewPartyArchivView> createState() => _NewPartyArchivViewState();
}

class _NewPartyArchivViewState extends State<NewPartyArchivView> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(appBarTitle: 'Archiv'),
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
          SizedBox(
            height: newHeight - newHeight / 16 - newHeight / 17 - 16,
            child: ListView.builder(
              itemCount: widget.years.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.years[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: newHeight / 2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.partyTitel.length,
                        itemBuilder: (context, index) {
                          return NewBoxContainer(
                            partyTitel: widget.partyTitel[index],
                            discription: widget.dicription[index],
                            ersteller: widget.ersteller[index],
                            boxColor: widget.boxColor[index],
                            newMessage: false,
                            isNew: false,
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

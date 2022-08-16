import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar3.dart';

import 'package:projekt_dionysos/constans/custom_widgets/new_box_container.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';

class EventView extends StatefulWidget {
  final List<String> partyTitel;
  final List<String> partycreater;
  final List<String> discription;
  final List<Color> boxColor;
  final List<bool> isNew;
  final List<bool> newMessage;
  final List<String> friends;
  const EventView(
      {required this.partyTitel,
      required this.partycreater,
      required this.discription,
      required this.boxColor,
      required this.isNew,
      required this.newMessage,
      required this.friends,
      Key? key})
      : super(key: key);

  @override
  State<EventView> createState() => _EventViewState();
}

class _EventViewState extends State<EventView> {
  bool private = true;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom - 56;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.red,
                    height: newHeight / 6,
                    width: width,
                  ),
                  const CustomAppbar3(appBarTitle: 'Events')
                ],
              ),
              Container(
                color: Colors.blue,
                width: width,
                height: newHeight / 6 * 5,
                child: Column(
                  children: [
                    SizedBox(
                      height: newHeight / 15,
                    ),
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
                                children: const [
                                  Icon(Icons.search),
                                  Text('Suchen')
                                ],
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
                                children: const [
                                  Icon(Icons.filter_list),
                                  Text('Filter')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: newHeight / 2,
                      width: width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.partyTitel.length,
                        itemBuilder: (context, index) {
                          return NewBoxContainer(
                            boxColor: widget.boxColor[index],
                            partyTitel: widget.partyTitel[index],
                            ersteller: widget.partycreater[index],
                            discription: widget.discription[index],
                            isNew: widget.isNew[index],
                            newMessage: widget.newMessage[index],
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
                                friends: widget.friends,
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: newHeight / 18 * 2,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: newHeight / 9,
                    child: ListView(
                      reverse: private ? true : false,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: private
                                ? BorderRadius.only(
                                    bottomLeft: Radius.circular(newHeight / 18),
                                  )
                                : BorderRadius.only(
                                    bottomRight:
                                        Radius.circular(newHeight / 18),
                                  ),
                          ),
                          height: newHeight / 9,
                          width: width / 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(newHeight / 18),
                              topRight: Radius.circular(newHeight / 18),
                            ),
                          ),
                          height: newHeight / 9,
                          width: width / 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: private
                                ? BorderRadius.only(
                                    bottomRight:
                                        Radius.circular(newHeight / 18),
                                  )
                                : BorderRadius.only(
                                    bottomLeft: Radius.circular(newHeight / 18),
                                  ),
                          ),
                          height: newHeight / 9,
                          width: width / 2,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            private = true;
                          });
                        },
                        child: SizedBox(
                          height: newHeight / 9,
                          width: width / 2,
                          child: const Center(
                            child: Text(
                              'Privat',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            private = false;
                          });
                        },
                        child: SizedBox(
                          height: newHeight / 9,
                          width: width / 2,
                          child: const Center(
                            child: Text(
                              'Public',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

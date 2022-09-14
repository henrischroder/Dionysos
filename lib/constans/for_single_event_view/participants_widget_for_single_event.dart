import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_widgets/single_teilnehmer_widget.dart';

import '../custom_icons/down_arrow_icon.dart';
import '../custom_icons/up_arrow_icon.dart';

class ParticipantsWidgetForSingleEvent extends StatefulWidget {
  const ParticipantsWidgetForSingleEvent({
    Key? key,
    required this.participans,
    required this.isFriend,
    required this.isAdmin,
    required this.accompaniment,
  }) : super(key: key);
  final List<String> participans;
  final List<bool> isFriend;
  final List<bool> isAdmin;
  final bool accompaniment;

  @override
  State<ParticipantsWidgetForSingleEvent> createState() =>
      _ParticipantsWidgetForSingleEventState();
}

class _ParticipantsWidgetForSingleEventState
    extends State<ParticipantsWidgetForSingleEvent> {
  bool showMore = false;
  bool greaterThanFive = true;
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;

    int teilnehmer = widget.participans.length;
    String teilnehmerAnzahl = teilnehmer.toString();

    return Center(
      child: SizedBox(
        width: width * 0.9,
        child: greaterThanFive
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$teilnehmerAnzahl Teilnehmer',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 236, 236, 236),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      widget.accompaniment
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: width / 8.5,
                                width: width / 8.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width / 16),
                                  color:
                                      const Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: const Center(
                                  child: Text(
                                    '+1',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 63, 63, 63),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 42, 42, 42),
                        borderRadius: BorderRadius.circular(20)),
                    child: AnimatedContainer(
                      curve: Curves.easeOut,
                      duration: const Duration(seconds: 1),
                      height: showMore
                          ? newHeight / 20 * widget.participans.length
                          : newHeight / 20 * 5,
                      child: Stack(
                        children: [
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.participans.length,
                            itemBuilder: (context, index) {
                              return SingleTeilnehmerWidget(
                                userName: widget.participans[index],
                                isFriend: widget.isFriend[index],
                                isAdmin: widget.isAdmin[index],
                              );
                            },
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeOut,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    const Color.fromARGB(255, 31, 31, 31)
                                        .withOpacity(0.0),
                                    const Color.fromARGB(255, 31, 31, 31)
                                        .withOpacity(showMore ? 0.0 : 0.8),
                                  ],
                                  stops: const [0.0, 1.0],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          showMore = !showMore;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeOut,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            showMore
                                ? const UpArrowIcon(
                                    iconSize: 20,
                                  )
                                : const DownArrowIcon(
                                    iconSize: 20,
                                  ),
                            Text(
                              showMore ? 'Weniger Anzeigen' : 'Mehr Anzeigen',
                              style: const TextStyle(
                                color: Color.fromARGB(255, 236, 236, 236),
                                fontSize: 15,
                              ),
                            ),
                            showMore
                                ? const UpArrowIcon(
                                    iconSize: 20,
                                  )
                                : const DownArrowIcon(
                                    iconSize: 20,
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '$teilnehmerAnzahl Teilnehmer',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 236, 236, 236),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      widget.accompaniment
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: width / 8.5,
                                width: width / 8.5,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(width / 16),
                                  color:
                                      const Color.fromARGB(255, 236, 236, 236),
                                ),
                                child: const Center(
                                  child: Text(
                                    '+1',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 63, 63, 63),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 42, 42, 42),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SizedBox(
                      height: newHeight / 20 * widget.participans.length,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.participans.length,
                        itemBuilder: (context, index) {
                          return SingleTeilnehmerWidget(
                            userName: widget.participans[index],
                            isFriend: widget.isFriend[index],
                            isAdmin: widget.isAdmin[index],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

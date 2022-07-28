import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar3.dart';
import 'package:projekt_dionysos/constans/custom_icons/down_arrow_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/up_arrow_icon.dart';
import 'package:projekt_dionysos/constans/custom_widgets/benachrichtigungen_dropdownButton_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/single_teilnehmer_widget.dart';

class SingleEventView extends StatefulWidget {
  const SingleEventView({
    Key? key,
    required this.participans,
    required this.isFriend,
  }) : super(key: key);
  final List<String> participans;
  final List<bool> isFriend;

  @override
  State<SingleEventView> createState() => _SingleEventViewState();
}

class _SingleEventViewState extends State<SingleEventView> {
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

    if (widget.participans.length <= 5) {
      greaterThanFive = false;
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar3(appBarTitle: 'Houseparty'),
            SizedBox(
              height: newHeight - 45,
              child: ListView(
                children: [
                  Container(
                    width: width,
                    height: newHeight / 2,
                    color: Colors.red,
                    child: GestureDetector(
                      onTap: () {
                        print('Bild');
                      },
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'Houseparty',
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 236, 236, 236),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'von: Gilbert',
                                    maxLines: 1,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 236, 236, 236),
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'Wir werden so viel Spaß haben!!!',
                                    maxLines: 3,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 236, 236, 236),
                                      fontSize: 15,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    color: const Color.fromARGB(255, 31, 31, 31),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print('Anfrage für +1');
                                },
                                child: Container(
                                  height: newHeight / 17,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 236, 236, 236),
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
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add_reaction_outlined,
                                          color:
                                              Color.fromARGB(255, 31, 31, 31),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Begleitung',
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 31, 31, 31),
                                            fontSize: 15,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      print('Zusagen');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: newHeight / 17,
                                        width: width / 6.5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color.fromARGB(
                                              255, 236, 236, 236),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 5,
                                              offset: const Offset(4, 3),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.check,
                                              size: 30,
                                              color: Color.fromARGB(
                                                  255, 31, 31, 31),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Text(
                                                'Zusagen',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromARGB(
                                                      255, 31, 31, 31),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('Absagen');
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: newHeight / 17,
                                        width: width / 6.5,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: const Color.fromARGB(
                                              255, 236, 236, 236),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 5,
                                              blurRadius: 5,
                                              offset: const Offset(4, 3),
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: const [
                                            Icon(
                                              Icons.cancel,
                                              size: 30,
                                              color: Color.fromARGB(
                                                  255, 31, 31, 31),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.all(3.0),
                                              child: Text(
                                                'Absagen',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color.fromARGB(
                                                      255, 31, 31, 31),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        greaterThanFive
                            ? Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '$teilnehmerAnzahl Teilnehmer',
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 236, 236),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color:
                                        const Color.fromARGB(255, 42, 42, 42),
                                    child: AnimatedContainer(
                                      curve: Curves.easeOut,
                                      duration: const Duration(seconds: 1),
                                      height: showMore
                                          ? newHeight /
                                              20 *
                                              widget.participans.length
                                          : newHeight / 20 * 5,
                                      child: Stack(
                                        children: [
                                          ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount:
                                                widget.participans.length,
                                            itemBuilder: (context, index) {
                                              return SingleTeilnehmerWidget(
                                                userName:
                                                    widget.participans[index],
                                                isFriend:
                                                    widget.isFriend[index],
                                              );
                                            },
                                          ),
                                          AnimatedContainer(
                                            duration:
                                                const Duration(seconds: 1),
                                            curve: Curves.easeOut,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              gradient: LinearGradient(
                                                begin:
                                                    FractionalOffset.topCenter,
                                                end: FractionalOffset
                                                    .bottomCenter,
                                                colors: [
                                                  const Color.fromARGB(
                                                          255, 31, 31, 31)
                                                      .withOpacity(0.0),
                                                  const Color.fromARGB(
                                                          255, 31, 31, 31)
                                                      .withOpacity(
                                                          showMore ? 0.0 : 0.8),
                                                ],
                                                stops: const [0.0, 1.0],
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            showMore
                                                ? const UpArrowIcon(
                                                    iconSize: 20,
                                                  )
                                                : const DownArrowIcon(
                                                    iconSize: 20,
                                                  ),
                                            Text(
                                              showMore
                                                  ? 'Weniger Anzeigen'
                                                  : 'Mehr Anzeigen',
                                              style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 236, 236, 236),
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
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '$teilnehmerAnzahl Teilnehmer',
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 236, 236),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color:
                                        const Color.fromARGB(255, 42, 42, 42),
                                    child: SizedBox(
                                      height: newHeight /
                                          20 *
                                          widget.participans.length,
                                      child: ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: widget.participans.length,
                                        itemBuilder: (context, index) {
                                          return SingleTeilnehmerWidget(
                                            userName: widget.participans[index],
                                            isFriend: widget.isFriend[index],
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Karte',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            print('Karte');
                          },
                          child: Container(
                            width: width,
                            height: newHeight * 0.3,
                            color: const Color.fromARGB(255, 42, 42, 42),
                            child: const Text(
                              'Karte',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const BenachrichtigungenDropdownButtonWidget(),
                        GestureDetector(
                          onTap: () {
                            print('Gruppe verlassen');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: newHeight / 17,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 236, 236, 236),
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
                              child: Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.exit_to_app,
                                      color: Color.fromARGB(255, 31, 31, 31),
                                      size: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Gruppe verlassen',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 31, 31, 31),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/neumorphism_boxshadow_deep.dart';

import 'package:projekt_dionysos/constans/for_single_event_view/accept_cancel_widgit.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/map_widget_for_single_event.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/wishlist_widget_for_single_event.dart';

class MainEventsContainer extends StatefulWidget {
  const MainEventsContainer(
      {required this.eventID,
      required this.boxColor,
      required this.dominantColor,
      required this.eventTitle,
      required this.eventDiscription,
      required this.eventDate,
      required this.eventCreator,
      super.key});

  final String eventID;
  final Color boxColor;
  final Color dominantColor;
  final String eventTitle;
  final String eventDiscription;
  final String eventDate;
  final String eventCreator;

  @override
  State<MainEventsContainer> createState() => _MainEventsContainerState();
}

class _MainEventsContainerState extends State<MainEventsContainer>
    with TickerProviderStateMixin {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    timeDilation = 1;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.05),
          child: MainEventsHero(
            scrollController: scrollController,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return MainEventsHero(
                      scrollController: scrollController,
                      onTap: () async {
                        scrollController.animateTo(0.0,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.ease);
                        await Future.delayed(
                          const Duration(milliseconds: 100),
                        );
                        Navigator.of(context).pop();
                      },
                      isBig: true,
                      eventID: widget.eventID,
                      boxColor: widget.boxColor,
                      dominantColor: widget.dominantColor,
                      eventTitle: widget.eventTitle,
                      eventDiscription: widget.eventDiscription,
                      eventDate: widget.eventDate,
                      eventCreator: widget.eventCreator,
                    );
                  },
                ),
              );
            },
            isBig: false,
            eventID: widget.eventID,
            boxColor: widget.boxColor,
            dominantColor: widget.dominantColor,
            eventTitle: widget.eventTitle,
            eventDiscription: widget.eventDiscription,
            eventDate: widget.eventDate,
            eventCreator: widget.eventCreator,
          ),
        ),
      ),
    );
  }
}

class MainEventsHero extends StatelessWidget {
  const MainEventsHero({
    required this.onTap,
    required this.isBig,
    required this.scrollController,
    required this.eventID,
    required this.boxColor,
    required this.dominantColor,
    required this.eventTitle,
    required this.eventDiscription,
    required this.eventDate,
    required this.eventCreator,
    super.key,
  });

  final VoidCallback onTap;
  final bool isBig;
  final ScrollController scrollController;
  final String eventID;
  final Color boxColor;
  final Color dominantColor;
  final String eventTitle;
  final String eventDiscription;
  final String eventDate;
  final String eventCreator;

  final Color textColor = const Color.fromARGB(255, 218, 218, 218);

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Hero(
      tag: eventID,
      flightShuttleBuilder: (flightContext, animation, flightDirection,
          fromHeroContext, toHeroContext) {
        return MainEventsTransition(
          animation: animation,
          eventID: eventID,
          boxColor: boxColor,
          dominantColor: dominantColor,
          eventTitle: eventTitle,
          eventDiscription: eventDiscription,
          eventDate: eventDate,
          eventCreator: eventCreator,
          textColor: textColor,
        );
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: isBig ? newHeight : newHeight * 0.5,
            width: isBig ? width : width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isBig ? 0 : 20),
              boxShadow: neumorphisBoxShadowDeep(),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(isBig ? 0 : 20),
              child: Stack(children: [
                Container(
                  width: isBig ? width : width * 0.6,
                  height: isBig ? newHeight : newHeight * 0.5,
                  alignment: isBig ? Alignment.topCenter : Alignment.topLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(isBig ? 0 : 20),
                    color: boxColor,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(isBig ? 0 : 0.5),
                          Colors.black.withOpacity(0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: const [0, 0.1],
                      ),
                    ),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.all(newHeight * 0.01),
                          child: Text(
                            eventDate,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: isBig ? 0 : 14,
                              color: textColor,
                            ),
                          ),
                        )),
                  ),
                ),
                ListView(
                  physics: isBig ? null : const NeverScrollableScrollPhysics(),
                  controller: scrollController,
                  children: [
                    SizedBox(
                      height: isBig ? newHeight * 0.5 : newHeight * 0.25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(isBig ? 40 : 20),
                          ),
                          color: dominantColor,
                          gradient: LinearGradient(
                            colors: [
                              dominantColor.withOpacity(isBig ? 1 : 0.0),
                              dominantColor.darken(isBig ? 0.2 : 0)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [isBig ? 0 : 0.01, isBig ? 1 : 0.09],
                          ),
                          boxShadow: [
                            BoxShadow(
                                color:
                                    Colors.black.withOpacity(isBig ? 0.25 : 0),
                                offset: const Offset(0, -3),
                                spreadRadius: 4,
                                blurRadius: 10)
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: width * 0.1,
                              right: width * 0.1,
                              bottom: newHeight * 0.01,
                              top: isBig ? newHeight * 0.04 : newHeight * 0.02,
                            ),
                            child: Text(
                              eventTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: isBig ? 36 : 24,
                                  color: textColor),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.1,
                                vertical: newHeight * 0.005),
                            child: Text(
                              'von: $eventCreator',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isBig ? 16 : 14,
                                color: textColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: isBig ? newHeight * 0.01 : 0),
                            child: Text(
                              eventDate,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isBig ? 16 : 0,
                                color: textColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: isBig ? newHeight * 0.01 : 0),
                            child: Text(
                              'Beschreibung:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isBig ? 16 : 0,
                                color: textColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: isBig ? width * 0.1 : width * 0.05,
                                right: isBig ? width * 0.1 : width * 0.05,
                                top: newHeight * 0.005,
                                bottom: newHeight * 0.025),
                            child: Text(
                              eventDiscription,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: isBig ? 16 : 14,
                                color: textColor,
                              ),
                              maxLines: isBig ? 100 : 3,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: isBig ? 0 : newHeight,
                          ),
                          isBig ? const AcceptCancelWidget() : const SizedBox(),
                          isBig
                              ? const MapWidgetForSingleEvent()
                              : const SizedBox(),
                          isBig
                              ? WishListWidgetForSingleEvent()
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class MainEventsTransition extends AnimatedWidget {
  const MainEventsTransition({
    Key? key,
    required this.eventID,
    required this.boxColor,
    required this.dominantColor,
    required this.eventTitle,
    required this.eventDiscription,
    required this.eventDate,
    required this.eventCreator,
    required this.textColor,
    required Animation<double> animation,
  }) : super(
          key: key,
          listenable: animation,
        );

  final String eventID;
  final Color boxColor;
  final Color dominantColor;
  final String eventTitle;
  final String eventDiscription;
  final String eventDate;
  final String eventCreator;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    Animation<double> animation = listenable as Animation<double>;
    return ClipRRect(
      borderRadius: BorderRadius.circular(animation.value * -20 + 20),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(animation.value * -20 + 20),
                color: boxColor,
                boxShadow: neumorphisBoxShadowDeep(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(animation.value * -0.5 + 0.5),
                      Colors.black.withOpacity(0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [
                      0,
                      0.1,
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(newHeight * 0.01),
                    child: Text(
                      eventDate,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: animation.value * -14 + 14,
                          color: textColor),
                    ),
                  ),
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: newHeight / 4 + animation.value * newHeight / 4,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(animation.value * 20 + 20),
                    ),
                    color: dominantColor,
                    gradient: LinearGradient(
                      colors: [
                        dominantColor.withOpacity(animation.value),
                        dominantColor.darken(animation.value * 0.1)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        animation.value * -0.01 + 0.01,
                        animation.value * 0.94 + 0.06
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color:
                              Colors.black.withOpacity(animation.value * 0.25),
                          offset: const Offset(0, -3),
                          spreadRadius: 4,
                          blurRadius: 10),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: width * 0.1,
                            right: width * 0.1,
                            bottom: newHeight * 0.01,
                            top: animation.value * newHeight * 0.02 +
                                newHeight * 0.02),
                        child: Text(
                          eventTitle,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: animation.value * 12 + 24,
                            color: textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1,
                            vertical: newHeight * 0.005),
                        child: Text(
                          'von: $eventCreator',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: animation.value * 2 + 14,
                            color: textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: animation.value * newHeight * 0.01),
                        child: Text(
                          eventDate,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: animation.value * 16,
                            color: textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: animation.value * newHeight * 0.01),
                        child: Text(
                          'Beschreibung:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: animation.value * 16,
                            color: textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: animation.value * width * 0.05 + width * 0.05,
                            right:
                                animation.value * width * 0.05 + width * 0.05,
                            top: newHeight * 0.005,
                            bottom: newHeight * 0.025),
                        child: Text(
                          eventDiscription,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: animation.value * 2 + 14,
                            color: textColor,
                          ),
                          maxLines: animation.value > 0.5 ? 100 : 3,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: animation.value * -1 * newHeight + newHeight,
                      ),
                      const AcceptCancelWidget(),
                      const MapWidgetForSingleEvent(),
                      WishListWidgetForSingleEvent(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

extension ColorBrightness on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }
}

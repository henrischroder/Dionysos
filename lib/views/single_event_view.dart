import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar3.dart';

import 'package:projekt_dionysos/constans/custom_widgets/benachrichtigungen_dropdownButton_widget.dart';

import 'package:projekt_dionysos/constans/for_single_event_view/accept_cancel_widgit.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/leave_group_widget_for_single_event.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/map_widget_for_single_event.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/participants_widget_for_single_event.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/wishlist_widget_for_single_event.dart';

class SingleEventView extends StatefulWidget {
  const SingleEventView({
    Key? key,
    required this.participans,
    required this.isFriend,
    required this.isAdmin,
    required this.accompaniment,
    required this.acceptcancel,
    required this.locationavalible,
    required this.wishlist,
  }) : super(key: key);
  final List<String> participans;
  final List<bool> isFriend;
  final List<bool> isAdmin;
  final bool accompaniment;
  final bool acceptcancel;
  final bool locationavalible;
  final bool wishlist;

  @override
  State<SingleEventView> createState() => _SingleEventViewState();
}

class _SingleEventViewState extends State<SingleEventView> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppbar3(appBarTitle: 'Houseparty'),
            SizedBox(
              height: newHeight - newHeight / 16,
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
                                    const Color.fromARGB(232, 98, 152, 156)
                                        .withOpacity(0.0),
                                    const Color.fromARGB(232, 98, 152, 156),
                                    
                                  ],
                                  stops: const [
                                    0.7,
                                    0.9,
                                    
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: newHeight / 70),
                                    child: const Text(
                                      'Houseparty',
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 236, 236, 236),
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    color: const Color.fromARGB(232, 98, 152, 156),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: newHeight / 100),
                          child: const Text(
                            'von: Gilbert',
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: newHeight / 100),
                          child: const Text(
                            '28/08/2022 - 19:00',
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: newHeight / 100),
                          child: const Text(
                            'Beschreibung: \n Wir werden so viel Spaß haben!!!',
                            maxLines: 3,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 236, 236, 236),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        widget.acceptcancel
                            ? const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AcceptCancelWidget(),
                              )
                            : SizedBox(
                                height: newHeight / 24,
                              ),
                        ParticipantsWidgetForSingleEvent(
                          participans: widget.participans,
                          isFriend: widget.isFriend,
                          isAdmin: widget.isAdmin,
                          accompaniment: widget.accompaniment,
                        ),
                        widget.locationavalible
                            ? const MapWidgetForSingleEvent()
                            : const SizedBox(),
                        widget.wishlist
                            ? const WishListWidgetForSingleEvent()
                            : const SizedBox(),
                        const BenachrichtigungenDropdownButtonWidget(),
                        const LeaveGroupWidgetForSingleEvent(),
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

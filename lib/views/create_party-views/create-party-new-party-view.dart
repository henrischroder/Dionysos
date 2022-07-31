import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/views/create_party-views/create_party_time_view.dart';

class CreatePartyNewPartyView extends StatefulWidget {
  const CreatePartyNewPartyView({Key? key}) : super(key: key);

  @override
  State<CreatePartyNewPartyView> createState() =>
      _CreatePartyNewPartyViewState();
}

class _CreatePartyNewPartyViewState extends State<CreatePartyNewPartyView> {
  late final TextEditingController _partyTitle;
  late final TextEditingController _discription;

  @override
  void initState() {
    _partyTitle = TextEditingController();
    _discription = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _partyTitle.dispose();
    _discription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(
            appBarTitle: 'Neues Event',
            appBarColor: Colors.white,
            appBarTitleColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(width / 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Gruppenbild',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          print('Gruppenbild auswählen');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: const Offset(4, 3),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(30),
                            child: Icon(
                              Icons.add_a_photo_rounded,
                              color: Color.fromARGB(255, 93, 93, 93),
                              size: 100,
                            ),
                          ),
                        ),
                      ),
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Partytitel',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    controller: _partyTitle,
                    autocorrect: false,
                    enableSuggestions: true,
                    autofocus: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Beschreibung',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    controller: _discription,
                    autocorrect: false,
                    enableSuggestions: true,
                    autofocus: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight / 7.5),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreatePartyTimeView(),
                          ),
                        );
                        ;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 125, 206, 117),
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
                        height: newHeight / 16,
                        width: width * 0.5,
                        child: const Center(
                          child: Text(
                            'Weiter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';

import 'package:projekt_dionysos/constans/custom_widgets/party_archiv_box_widget.dart';

class PartyArchivView extends StatefulWidget {
  const PartyArchivView({Key? key}) : super(key: key);

  @override
  State<PartyArchivView> createState() => _PartyArchivViewState();
}

class _PartyArchivViewState extends State<PartyArchivView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(appBarTitle: 'Archiv'),
          SizedBox(
            height: height - 45,
            child: ListView(
              children: [
                // möglichkeit für memorys
                Container(
                  color: const Color.fromARGB(255, 45, 45, 45),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Juli 2022',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 11, 11, 11),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: height / 3 * 2,
                      ),
                      child: GridView.count(
                        shrinkWrap: true,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 7.5,
                        crossAxisCount: 3,
                        children: const [
                          PartyArchivBoxWidget(
                            boxColor: Colors.red,
                            partyTitel: 'Houseparty',
                            discription: 'Wir werden so viel Spaß haben!',
                            ersteller: 'Gilbert',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.blue,
                            partyTitel: '18. Geburtstag',
                            discription: 'Ich wünsche mir zu meinem Geburtstag',
                            ersteller: 'Jonah',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.green,
                            partyTitel: 'Vatertag',
                            discription: 'Wir werden uns so einen Reintrinken',
                            ersteller: 'Tim Rodenberg',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.yellow,
                            partyTitel: 'partyTitel',
                            discription: 'discription',
                            ersteller: 'ersteller',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 45, 45, 45),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Juni 2022',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 11, 11, 11),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: height / 3 * 2,
                      ),
                      child: GridView.count(
                        shrinkWrap: true,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 7.5,
                        crossAxisCount: 3,
                        children: const [
                          PartyArchivBoxWidget(
                            boxColor: Colors.red,
                            partyTitel: 'Houseparty',
                            discription: 'Wir werden so viel Spaß haben!',
                            ersteller: 'Gilbert',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.blue,
                            partyTitel: '18. Geburtstag',
                            discription: 'Ich wünsche mir zu meinem Geburtstag',
                            ersteller: 'Jonah',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.green,
                            partyTitel: 'Vatertag',
                            discription: 'Wir werden uns so einen Reintrinken',
                            ersteller: 'Tim Rodenberg',
                          ),
                          PartyArchivBoxWidget(
                            boxColor: Colors.yellow,
                            partyTitel: 'partyTitel',
                            discription: 'discription',
                            ersteller: 'ersteller',
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
    );
  }
}

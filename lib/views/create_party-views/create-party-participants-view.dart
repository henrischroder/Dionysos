import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-new-party-view.dart';

class CreatePartyParticipantsView extends StatelessWidget {
  final List<String> friends;

  const CreatePartyParticipantsView({
    Key? key,
    required this.friends,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppbar2(appBarTitle: 'Wer soll dabei sein?'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreatePartyNewPartyView(),
                        ),
                      );
                    },
                    child: Container(
                      height: newHeight / 17,
                      width: width * 0.3,
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
                      child: const Center(
                        child: Text(
                          'Weiter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
              height: newHeight / 20,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Freunde'),
              )),
          SizedBox(
            height: newHeight -
                newHeight / 16 -
                32 -
                newHeight / 17 -
                newHeight / 20,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                    ),
                    child: ListTile(
                      leading: const ProfilIcon(
                        iconColor: Colors.black,
                        iconSize: 40,
                      ),
                      trailing: const RightArrowIcon(
                        iconColor: Colors.black,
                      ),
                      title: Text(friends[index]),
                      onTap: () {
                        print(friends[index]);
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

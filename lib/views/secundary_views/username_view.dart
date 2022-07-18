import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';

class UsernameView extends StatefulWidget {
  const UsernameView({Key? key}) : super(key: key);

  @override
  State<UsernameView> createState() => _UsernameViewState();
}

class _UsernameViewState extends State<UsernameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(appBarTitle: 'Nutzername'),
          const Text('Anhand dieses Namens können dich deine Freunde bei'),
          const Text('Dionysos finden. Du kann deinen Nutzernamen nur'),
          const Text('einmal im Jahr ändern'), // Zeitspanne noch ungewiss
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'NUTZERNAME',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 5,
                        offset: const Offset(4, 3),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'henrischroder'),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                print('switch username');
              },
              child: const Text(
                'Nutzername ändern',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

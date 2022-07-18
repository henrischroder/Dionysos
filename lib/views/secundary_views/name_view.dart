import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';

class NameView extends StatefulWidget {
  const NameView({Key? key}) : super(key: key);

  @override
  State<NameView> createState() => _NameViewState();
}

class _NameViewState extends State<NameView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppbar2(appBarTitle: 'Name'),
          Text('So sehen dich andere auf Dionysos, nimm einen Namen,'),
          Text('mit dem dich deine Freunde erkenn.'),
          TextField(
            decoration: InputDecoration(
                hintText:
                    'Vorname'), // sollte aber zunächst bereits vorhandenen Namen zeigen
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Nachname'),
          ),
        ],
      ),
    );
  }
}

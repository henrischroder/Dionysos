import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/views/registration_views/register_birthday2_view.dart';

class RegisterNameView extends StatefulWidget {
  const RegisterNameView({Key? key}) : super(key: key);

  @override
  State<RegisterNameView> createState() => _RegisterNameViewState();
}

class _RegisterNameViewState extends State<RegisterNameView> {
  late final TextEditingController _name;
  late final TextEditingController _lastname;

  @override
  void initState() {
    _name = TextEditingController();
    _lastname = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _lastname.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar2(
              appBarTitle: 'Wie heißt du?',
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
                      'Vorname',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      controller: _name,
                      autocorrect: false,
                      enableSuggestions: true,
                      autofocus: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Nachname',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: TextField(
                      controller: _lastname,
                      autocorrect: false,
                      enableSuggestions: true,
                      autofocus: true,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Wenn du auf die Registrieren und Akzeptieren tippst, bestätigst du, dass du die Datenschutzbestimmung gelesen hast und dass du den Servicebestimmungen zustimmst.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterBirthday2View(),
                          ),
                        );
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
                            'Registrieren und Akzeptieren',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
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
    );
  }
}

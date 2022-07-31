import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/views/registration_views/register_email_view.dart';

class RegisterPasswordView extends StatefulWidget {
  const RegisterPasswordView({Key? key}) : super(key: key);

  @override
  State<RegisterPasswordView> createState() => _RegisterPasswordViewState();
}

class _RegisterPasswordViewState extends State<RegisterPasswordView> {
  late final TextEditingController _password;
  late final TextEditingController _password2;

  @override
  void initState() {
    _password = TextEditingController();
    _password2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    _password2.dispose();
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
            appBarTitle: 'Wähle einen Passwort',
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
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Dein Passwort sollte min. 8 Zeichen lang sein.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Passwort',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    controller: _password,
                    autocorrect: false,
                    enableSuggestions: true,
                    autofocus: true,
                    obscureText: true,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'Passwort wiederholen',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    controller: _password2,
                    autocorrect: false,
                    enableSuggestions: true,
                    autofocus: true,
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight / 7),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterEmailView(),
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

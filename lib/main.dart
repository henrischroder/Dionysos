import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:projekt_dionysos/views/another_test_view.dart';
=======
import 'package:projekt_dionysos/constans/design_elements/theme_provider.dart';
import 'package:projekt_dionysos/views/design_test_views/animatedlist_test.dart';
import 'package:projekt_dionysos/views/design_test_views/button_design.dart';
import 'package:projekt_dionysos/views/design_test_views/know_wich_key_it_is.dart';
import 'package:projekt_dionysos/views/design_test_views/own_event_container.dart';
import 'package:projekt_dionysos/views/design_test_views/main_event_container.dart';
import 'package:projekt_dionysos/views/test_views/animation_test_view.dart';
import 'package:projekt_dionysos/views/test_views/another_test_view.dart';
>>>>>>> Stashed changes
import 'package:projekt_dionysos/views/create_party-views/create-party-new-party-view.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';
import 'package:projekt_dionysos/views/create_party-views/create_party_time_view.dart';
import 'package:projekt_dionysos/views/main_views/starter_view.dart';
import 'package:projekt_dionysos/views/new_party_archiv_view.dart';
import 'package:projekt_dionysos/views/registration_views/login_view.dart';
import 'package:projekt_dionysos/views/main_views/create_new_party_view.dart';
import 'package:projekt_dionysos/views/main_views/event_view.dart';
import 'package:projekt_dionysos/views/main_views/new_party_view.dart';
import 'package:projekt_dionysos/views/main_views/profil_view.dart';
import 'package:projekt_dionysos/views/main_views/settings_view.dart';
import 'package:projekt_dionysos/views/new_settings_view.dart';
import 'package:projekt_dionysos/views/party_archiv_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_birthday2_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_birthday_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_email_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_name_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_password_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_profilpic_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_username_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_view.dart';
import 'package:projekt_dionysos/views/secundary_views/name_view.dart';
import 'package:projekt_dionysos/views/secundary_views/username_view.dart';
import 'package:projekt_dionysos/views/simply_a_test_view.dart';
import 'package:projekt_dionysos/views/single_event_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< Updated upstream
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TestView());
=======
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: const Scaffold(
        body: MainEventsContainer(
          eventID: 'eventID',
          boxColor: Colors.red,
          dominantColor: Colors.amber,
          eventTitle: 'eventTitle',
          eventDiscription: 'eventDiscription',
          eventDate: 'eventDate',
          eventCreator: 'eventCreator',
        ),
      ),
    );
>>>>>>> Stashed changes
  }
}

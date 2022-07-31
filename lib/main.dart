import 'package:flutter/material.dart';
import 'package:projekt_dionysos/views/another_test_view.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-new-party-view.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';
import 'package:projekt_dionysos/views/create_party-views/create_party_time_view.dart';
import 'package:projekt_dionysos/views/registration_views/login_view.dart';
import 'package:projekt_dionysos/views/main_views/create_new_party_view.dart';
import 'package:projekt_dionysos/views/main_views/current_party_view.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginView());
  }
}

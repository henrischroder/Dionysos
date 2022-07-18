import 'package:flutter/material.dart';

import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_6_text_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_7_text_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_double_text_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_quadruple_text_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_single_text_widget.dart';
import 'package:projekt_dionysos/constans/custom_widgets/custom_triple_text_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppbar2(
          appBarTitle: 'Einstellungen',
        ),
        SizedBox(
          height: 743,
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'MEIN ACCOUNT',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              Custom7TextWidget(
                title: 'Name',
                hintText: 'Henri Schröder', // weiterleiten zu name_view
                title2: 'Nutzername',
                hintText2: 'henrischroder', // weiterleiten zu username_view
                title3: 'Geburtstag',
                hintText3: '1.August 2003', // weiterleiten zu birthday_view
                title4: 'Email',
                hintText4:
                    'henri-schroeder@gmx.de', // weiterleiten zu email_view
                title5: 'Passwort',
                title6:
                    '2-Faktoren-Bestätigung', // (weiterleiten zu 2_factor_authentication_view)
                title7:
                    'Benachrichtigungen', // weiterleiten zu notidication_view
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'MEHR MÖGLICHKEITEN',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              CustomSingleTextWidget(
                title: 'Einstellen', // weiterleiten zu additional_settings_view
                boxColor: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'DATENSCHUTZKONTROLLE',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              CustomQaudrupleTextWidget(
                title: 'Mich kontaktieren', // weiterleiten zu contact_me_view
                hintText: 'Meine Freunde',
                title2:
                    'Meinen Strandort anzeigen', // weiterleiten zu show_location_view
                hintText2: 'Meine Freunde',
                title3: 'Mich unter Vorschlägen finden',
                hintText3: 'Ja', // weiterleiten zu recomendation_view
                title4:
                    'Mein Profilbild sehen', // weiterleiten zu profilpic_view
                hintText4: 'Meine Freunde',
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'SUPPORT',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              CustomTripleTextWidget(
                title: 'Ich brauche Hilfe', // weiterleiten zu need_help_view
                title2:
                    'Es gibt ein Sicherheitsproblem', // weiterleiten zu security_problem_view
                title3:
                    'Ich habe eine Frage zum Datenschutz', // weiterleiten zu question_privacy_view
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'FEEDBACK',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              CustomDoubleTextWidget(
                title:
                    'Ich habe einen Fehler entdeckt', // weiterleiten zu found_problem_view
                title2:
                    'Ich habe einen Verbesserungsvorschlag', // weiterleiten zu enhancement_sugestions_view
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'MEHR INFOS',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              CustomTripleTextWidget(
                title:
                    'Datenschutzbestimmungen', // weiterleiten zu privacy_view
                title2: 'Servicebestimmungen', // weiterleiten zu service_view
                title3: 'Sonstige Richtlinien', // weiterleiten zu others_view
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ACCOUNT-AKTIONEN',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
              ),
              Custom6TextWidget(
                title: 'Cache leeren', // [()]
                hintText: '1451.93MB',
                title2:
                    'Bei Dionysos Beta mitmachen', // weiterleiten zu beta_view
                title3: 'Blockiert', // weiterleiten zu blocked_view
                title4:
                    'Account löschen', // weiterleiten zu delete_account_veiw
                title5: 'Meine Daten', // weiterleiten zu my_data_view
                title6: 'Ausloggen', // Overlay log_out
              ),
              Text(
                'Dionysos v1.0',
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              Text(
                'Entwickelt in Hildesheim',
                style: TextStyle(),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}

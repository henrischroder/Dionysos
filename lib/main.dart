import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projekt_dionysos/constans/custom_icons/profil_icon.dart';
import 'package:projekt_dionysos/constans/for_single_event_view/participants_widget_for_single_event.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';
import 'package:projekt_dionysos/views/main_event_container.dart';
import 'package:projekt_dionysos/views/simply_a_test_view.dart';
import 'package:projekt_dionysos/views/test_views/add_friends.dart';
import 'package:projekt_dionysos/views/test_views/animated_list_test.dart';
import 'package:projekt_dionysos/views/test_views/can_always_get_deletet.dart';
import 'package:projekt_dionysos/views/test_views/color_hue_test.dart';
import 'package:projekt_dionysos/views/test_views/friendlist.dart';
import 'package:projekt_dionysos/views/test_views/loading_container.dart';
import 'package:projekt_dionysos/views/test_views/navbar.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_check_test.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';
import 'package:projekt_dionysos/views/test_views/profil_view_test.dart';
import 'package:projekt_dionysos/views/test_views/spinner.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: CanGetDeleted());
  }
}

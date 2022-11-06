import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:projekt_dionysos/views/create_party-views/create-party-participants-view.dart';
import 'package:projekt_dionysos/views/main_event_container.dart';
import 'package:projekt_dionysos/views/simply_a_test_view.dart';
import 'package:projekt_dionysos/views/test_views/animated_list_test.dart';
import 'package:projekt_dionysos/views/test_views/can_always_get_deletet.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_check_test.dart';
import 'package:projekt_dionysos/views/test_views/person_list_tile_test.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const CanGetDeleted());
  }
}

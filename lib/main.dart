import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/101/card_learn.dart';
import 'package:flutter_application_2/101/container_sized_box_learn.dart';
import 'package:flutter_application_2/101/scaffold_learn.dart';
import 'package:flutter_application_2/101/text_learn_veiw.dart';

import '101/demo/color_demos_view.dart';
import '101/demo/color_life_cycle.dart';
import '101/demo/create_note_app.dart';
import '101/demo/my_collections.dart';
import '101/demo/to_do_app.dart';
import '101/list_view.dart';
import '101/list_view_builder.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/statefull_learn.dart';
import '101/stateless_learn.dart';
import '101/text_field_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: ToDoApp(),
    );
  }
}

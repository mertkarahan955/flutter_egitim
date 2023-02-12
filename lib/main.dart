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
import '202/model_learn_view.dart';
import '202/tab_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        bottomAppBarTheme:
            const BottomAppBarTheme(shape: CircularNotchedRectangle()),
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
        cardTheme: CardTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        textSelectionTheme: const TextSelectionThemeData(
            selectionColor: Colors.red,
            cursorColor: Colors.green,
            selectionHandleColor: Colors.black),
        inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            iconColor: Colors.red,
            labelStyle: TextStyle(color: Colors.lime),
            border: OutlineInputBorder(),
            floatingLabelStyle: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      home: ModelLearnView(),
    );
  }
}

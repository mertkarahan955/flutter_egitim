import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/card_learn.dart';
import 'package:flutter_application_2/101/demo/my_collections.dart';

import 'navigate_detailed_learn.dart';

class NavigationLearnView extends StatefulWidget {
  const NavigationLearnView({super.key});

  @override
  State<NavigationLearnView> createState() => _NavigationLearnViewState();
}

class _NavigationLearnViewState extends State<NavigationLearnView>
    with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index) {
    setState(() {
      selectedItems[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
              onPressed: () async {
                final response = await navigateToWidgetNormal<bool>(
                    context, const NavigateLearnDart());
                if (response == true) {
                  addSelected(index);
                }
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await navigateToWidgetNormal<bool>(
              context, const NavigateLearnDart());
          if (response == true) {}
        },
        child: Icon(Icons.navigation_rounded),
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}

Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
  return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
      fullscreenDialog: true,
      settings: RouteSettings()));
}

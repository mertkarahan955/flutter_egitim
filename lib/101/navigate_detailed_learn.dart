import 'package:flutter/material.dart';

class NavigateLearnDart extends StatefulWidget {
  const NavigateLearnDart({super.key});

  @override
  State<NavigateLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateLearnDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: Icon(Icons.check),
            label: Text('onayla')),
      ),
    );
  }
}

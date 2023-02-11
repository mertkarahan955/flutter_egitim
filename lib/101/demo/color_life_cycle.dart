import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/demo/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.pink;
                });
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(children: [
        Spacer(),
        Expanded(
            child: ColorDemos(
          initialColor: _backgroundColor,
        )),
      ]),
    );
  }
}

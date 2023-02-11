// ignore_for_file: public_member_api_docs, sort_constructors_first
// bir ekran olucak
// bu ekranda 3 buton ve bunlara basica renk degisimi
// secili olan button selected icon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({
    Key? key,
    required this.initialColor,
  }) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor == _backgroundColor &&
        widget.initialColor == null) {
    } else {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor ?? Colors.transparent,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _onTapChange, items: const [
        BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.yellow), label: 'Yellow')
      ]),
    );
  }

  void _onTapChange(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    }
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 10,
      width: 10,
    );
  }
}

enum _MyColors { red, yellow }

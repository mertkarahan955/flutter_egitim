import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  get padding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Padding(
          padding: PaddingStyles.paddingAll,
          child: Container(
            width: 50,
            height: 100,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: PaddingStyles.paddingTop,
          child: Container(
            width: 50,
            height: 100,
            color: Colors.amber,
          ),
        ),
        Padding(
            padding: PaddingStyles.paddingAll,
            child: Container(
              width: 50,
              height: 100,
              color: Colors.green,
            )),
      ]),
    );
  }
}

class PaddingStyles {
  static const paddingAll = EdgeInsets.all(40);
  static const paddingTop = EdgeInsets.only(top: 20);
  static const paddingBottom = EdgeInsets.only(bottom: 60);
}

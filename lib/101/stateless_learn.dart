import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(appBar: AppBar(), body: Column(children: [TextDecor()]));
  }
}

class TextDecor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("data", style: Theme.of(context).textTheme.headline5);
  }
}

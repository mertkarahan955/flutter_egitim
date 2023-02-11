import 'package:flutter/material.dart';

import 'counter_hello.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool _updateCounter) {
    if (_updateCounter) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _increaseMethod(),
          _decreaseMethod(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            '$_countValue',
            style: Theme.of(context).textTheme.headline4,
          )),
          Placeholder(),
          CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _increaseMethod() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _decreaseMethod() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}

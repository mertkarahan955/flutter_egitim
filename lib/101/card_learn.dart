import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Learn'),
      ),
      body: Column(
        children: [
          Card(
            child: SizedBox(height: 100, width: 200),
            color: Theme.of(context).colorScheme.error,
            margin: EdgeInsets.all(50),
            shape: StadiumBorder(),
          ),
          _CustomCard(
              child: SizedBox(
            width: 50,
            height: 100,
          ))
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  @override
  final Widget child;

  const _CustomCard({super.key, required this.child});
  Widget build(BuildContext context) {
    return Card(
      child: child,
      color: Theme.of(context).colorScheme.error,
      margin: EdgeInsets.all(50),
      shape: StadiumBorder(),
    );
  }
}

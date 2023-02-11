// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({
    Key? key,
  }) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Center(
            child: Text(
              'Instagram',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              _storyContainer(color: Colors.green),
              _storyContainer(color: Colors.white),
              _storyContainer(color: Colors.green),
              _storyContainer(color: Colors.white),
              _storyContainer(color: Colors.green),
              _storyContainer(color: Colors.white),
            ]),
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          const Divider(),
          IconButton(onPressed: () {}, icon: Icon(Icons.close))
        ],
      ),
    );
  }
}

class _storyContainer extends StatelessWidget {
  const _storyContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(50), color: color),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

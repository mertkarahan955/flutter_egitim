// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  final _controller = TextEditingController();
  final String appName = 'To Do App';
  // list of to do
  List todoList = [
    ['make tutorial', false],
    ['do exercise', false]
  ];

  // change box tick changes
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

// saving new task todoList
  void saveNewTask() {
    setState(() {
      todoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

// creating new task with using floating action button
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  // delete a task
  void deleteTask(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Decorations().scaffoldColor,
        appBar: AppBar(
            backgroundColor: Decorations().appBarColor,
            title: Text(
              appName,
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            createNewTask();
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ToDoList(
                taskName: todoList[index][0],
                taskCompleted: todoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
                deleteFunction: (context) => deleteTask(index));
          },
        ));
  }
}

class ToDoList extends StatelessWidget {
  final String? taskName;
  final bool? taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;
  ToDoList({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    this.deleteFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings().mainOutsidePadding,
      child: Container(
        padding: Paddings().containerPadding,
        decoration: BoxDecoration(
            color: Decorations().containerListColor,
            borderRadius:
                BorderRadius.circular(Decorations().containerCounterRadius)),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Decorations().checkBoxColor,
            ),
            Text(
              taskName!,
              style: TextStyle(
                  decoration: taskCompleted!
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}

class DialogBox extends StatelessWidget {
  final controller;
  final String saveText = 'Save';
  final String cancelText = 'Cancel';
  final String hintText = 'Add a new task';
  VoidCallback onSave;
  VoidCallback onCancel;
  Function(BuildContext)? deleteFunction;
  DialogBox({
    Key? key,
    required this.onSave,
    required this.onCancel,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Decorations().alertWidgetColor,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              focusNode: FocusNode(),
              autofocus: true,
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: hintText),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  text: saveText,
                  onPressed: onSave,
                ),
                ButtonWidget(
                  text: cancelText,
                  onPressed: onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// save cancel button
class ButtonWidget extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: onPressed,
        child: Text(text),
        color: Theme.of(context).primaryColor);
  }
}

// main colors in the app
class Decorations {
  Color? scaffoldColor = Colors.amber[100];
  Color? checkBoxColor = Colors.black;
  Color? alertWidgetColor = Colors.amber[300];
  Color? appBarColor = Colors.amber[500];
  Color? containerListColor = Colors.amber[500];
  final double containerCounterRadius = 11;
}

class Paddings {
  final EdgeInsets mainOutsidePadding =
      const EdgeInsets.only(top: 25, left: 25, right: 25);
  final EdgeInsets containerPadding = const EdgeInsets.all(25);
}

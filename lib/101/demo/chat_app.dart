import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> messages = [
    "Her şeyiniz yolunda gidecek.",
    "Hayatınız hep güzel olacak.",
    "Başarı her zaman yanınızda olacak.",
    "Mutlu ve huzurlu olmanız dileğiyle.",
    "Her zaman pozitif düşüneceksiniz."
  ];
  String message = "";

  @override
  void initState() {
    super.initState();
    _getMessage();
  }

  void _getMessage() {
    setState(() {
      message = messages[Random().nextInt(messages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Motivasyon Botu"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _getMessage,
              child: Text("Başka Bir Mesaj"),
            ),
          ],
        ),
      ),
    );
  }
}

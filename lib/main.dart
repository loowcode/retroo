import 'package:flutter/material.dart';
import 'package:retroo/page/home_page.dart';
import 'package:retroo/page/kanban.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retroo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Retroo")),
        body:  const HomePage(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app/Pages/LoginPage.dart';
import 'package:my_app/Pages/TaskListPage.dart';
import 'package:my_app/Pages/TaskPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

      routes: {
        '/task': (context) => TaskPage(),
        '/taskList': (context) => TaskListPage(),
        '/login': (context) => LoginPage(),
        '/logout': (context) => LoginPage(),
      },
    );
  }
}

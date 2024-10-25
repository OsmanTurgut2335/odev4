import 'package:flutter/material.dart';
import 'package:homework/login_page.dart';

import 'package:homework/obs_welcome_page.dart';
import 'package:homework/student_page.dart';
import 'package:homework/todo_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/student': (context) => StudentPage(),
        '/todo': (context) => ToDoListPage(),
        '/obs': (context) => OBSWelcomePage(),
      },
    );
  }
}

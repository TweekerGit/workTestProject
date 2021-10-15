import 'package:flutter/material.dart';
import 'package:work_test_project/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Work Test Project',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: const HomePage(title: 'Work Test Project'));
  }
}

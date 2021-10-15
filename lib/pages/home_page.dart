import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;

  void _changeColor() {
    setState(() {
      _backgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: TextButton(
            onPressed: _changeColor,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              alignment: Alignment.center,
            ),
            child: AnimatedContainer(
              alignment: Alignment.center,
              color: _backgroundColor,
              duration: const Duration(seconds: 1),
              child:
                  const Text('Hey There! :)', style: TextStyle(fontSize: 32)),
            )));
  }
}

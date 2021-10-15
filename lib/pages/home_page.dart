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
        body: Center(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(_backgroundColor),
                  alignment: Alignment.center,
                  minimumSize: MaterialStateProperty.all(Size.infinite)),
              onPressed: _changeColor,
              child: const Text(
                'Hey there! :)',
                style: TextStyle(fontSize: 32, color: Colors.black),
              )),
        ));
  }
}

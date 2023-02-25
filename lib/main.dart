import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Battle',
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {
                print("Tap on red");
              },
              child: Container(
                color: Colors.redAccent,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: InkWell(
              onTap: () {
                print('Tap on blue');
              },
              child: Container(
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int redScore = 50;
  int blueScore = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Battle',
      home: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: redScore,
            child: InkWell(
              onTap: () {
                setState(() {
                  redScore = redScore + 1;
                  blueScore = blueScore - 1;
                });
              },
              child: Container(
                color: Colors.redAccent,
              ),
            ),
          ),
          Expanded(
            flex: blueScore,
            child: InkWell(
              onTap: () {
                setState(() {
                  blueScore = blueScore + 1;
                  redScore = redScore - 1;
                });
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

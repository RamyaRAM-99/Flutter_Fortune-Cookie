import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Fortune Cookie',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: BodyScreen(),
      ),
    );
  }
}

class BodyScreen extends StatefulWidget {
  BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

class _BodyScreenState extends State<BodyScreen> {
  int buttonTapped = 0;

  void buttonTappedAction() {
    setState(() {
      buttonTapped = Random().nextInt(16) + 1;
      print('Tapped now $buttonTapped');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            // buttonTappedAction();
          },
          child: Image.asset('images/cookie$buttonTapped.jpeg'),
        ),
        TextButton(
          onPressed: () {
            buttonTappedAction();
          },
          child: const Text(
            'Tap to check your Fortune',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}

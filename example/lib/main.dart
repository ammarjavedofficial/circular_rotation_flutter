import 'package:flutter/material.dart';
import 'package:circular_rotation_flutter/src/circular_rotation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularRotationFlutter(
            radius: 100,
            child: Icon(
              Icons.add_reaction_rounded,
              color: Colors.amber,
              size: 48,
            ),
          ),
        ),
      ),
    );
  }
}

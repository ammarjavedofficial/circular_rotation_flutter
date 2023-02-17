import 'package:circular_rotation_flutter/src/circular_rotation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ciruclar Rotation',
      home: Scaffold(
        body: Center(
          child: CircleWidget(
            child: Icon(Icons.add_reaction_rounded, color: Colors.amber, size: 48,),
            radius: 100,
          ),
        ),
      ),
    );
  }
}

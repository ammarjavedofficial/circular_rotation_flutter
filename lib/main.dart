import 'package:circular_rotation_flutter/src/circular_rotation.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularRotationFlutter(
      radius: 100,
      child: Icon(
        Icons.add_reaction_rounded,
        color: Colors.amber,
        size: 48,
      ),
    );
  }
}

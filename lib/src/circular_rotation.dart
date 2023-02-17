import 'dart:math' as math;

import 'package:flutter/material.dart';

class CircularRotationFlutter extends StatefulWidget {
  final Widget child;
  final double radius;

  const CircularRotationFlutter({
    super.key,
    required this.child,
    required this.radius,
  });

  @override
  CircularRotationFlutterState createState() => CircularRotationFlutterState();
}

class CircularRotationFlutterState extends State<CircularRotationFlutter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    _animation = Tween(begin: 0.0, end: 2 * math.pi).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.radius * 2,
      height: widget.radius * 2,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(
              widget.radius * math.cos(_animation.value),
              widget.radius * math.sin(_animation.value),
            ),
            child: Transform.rotate(
              angle: _animation.value,
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}

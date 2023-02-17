import 'dart:math' as math;

import 'package:flutter/material.dart';

class CircleWidget extends StatefulWidget {
  final Widget child;
  final double radius;

  CircleWidget({
    required this.child,
    required this.radius,
  });

  @override
  _CircleWidgetState createState() => _CircleWidgetState();
}

class _CircleWidgetState extends State<CircleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
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
    return Container(
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

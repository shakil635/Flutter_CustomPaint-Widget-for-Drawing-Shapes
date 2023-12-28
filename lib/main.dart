/*
Practice Question 2: CustomPaint Widget for Drawing Shapes
Task: Develop a Flutter application that includes a CustomPaint
 widget to draw a simple shape (e.g., a star or a circle).
 This widget should be reusable and customizable in terms of size and color.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomPaintedShape(sideLength: 100, color: Colors.red),
      ),
    );
  }
}

class CustomPaintedShape extends StatelessWidget {
  final double sideLength;
  Color color;
  CustomPaintedShape({super.key, required this.color, required this.sideLength});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
      painter : Circle(color),
        size: Size(sideLength, sideLength),
      ),
    );
  }
}

class Circle extends CustomPainter {
  final Color color;
  Circle(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = color
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      center,
      size.width * 1 / 4,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

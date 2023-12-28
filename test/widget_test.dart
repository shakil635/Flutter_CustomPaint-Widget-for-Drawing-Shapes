// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chap5_2nd_q/main.dart';

void main() {
  testWidgets('CustomPaint Widget for Drawing Shapes',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CustomPaintedShape(
            sideLength: 100, color: Colors.red), // Your CustomPaint widget
      ),
    ));
 
    // Verify CustomPaint is used
    expect(
        find.byWidgetPredicate(
          (Widget widget) => widget is CustomPaint && widget.painter is CustomPainter,
          description: 'CustomPaint checking for a custom painter within',
        ),
        findsOneWidget);
 
    // Further tests can include checking if the shape parameters (like size and color) are correctly applied,
    // which may require additional methods or properties in your CustomShape widget for testability.
  });
}
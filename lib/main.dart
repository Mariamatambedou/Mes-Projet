import 'package:flutter/material.dart';
import 'package:test/screens/visit_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma carte de visite',
      home: VisitCart(),
    );
  }
}

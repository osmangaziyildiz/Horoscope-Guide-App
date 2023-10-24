import 'package:flutter/material.dart';
import 'package:horoscope_guide/route_generator.dart';

void main() => runApp(const HoroscopeGuide());

class HoroscopeGuide extends StatelessWidget {
  const HoroscopeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

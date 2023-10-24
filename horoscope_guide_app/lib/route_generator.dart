import 'package:flutter/material.dart';
import 'package:horoscope_guide/horoscope_detail.dart';
import 'package:horoscope_guide/horoscope_list.dart';
import 'package:horoscope_guide/models/horoscope.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => HoroscopeList());
      case "/horoscopeDetail":
        return MaterialPageRoute(
          builder: (context) => HoroscopeDetail(
            selectedHoroscope: settings.arguments as Horoscope,
          ),
        );

      default:
        MaterialPageRoute(builder: (context) => HoroscopeList());
    }
    return null;
  }
}

import 'package:flutter/material.dart';

class PerDayWeather {
  const PerDayWeather(
      {required this.icon,
      required this.time,
      required this.weather,
      required this.temperature});
  final IconData icon;
  final String time;
  final String weather;
  final String temperature;
}

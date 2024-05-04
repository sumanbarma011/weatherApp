import 'package:flutter/material.dart';
import 'package:weatherapp/home/model/per_day_module.dart';

List<PerDayWeather> todayWeather = const [
  PerDayWeather(
      icon: Icons.sunny,
      time: '9 Am',
      weather: 'Sunny Cloudy',
      temperature: '17 c'),
       PerDayWeather(
      icon: Icons.cloud,
      time: '11 Pm',
      weather: 'Cloudy',
      temperature: '8 c'),
       PerDayWeather(
      icon: Icons.snowing,
      time: '12 Am',
      weather: 'Snow',
      temperature: '-8c'),
       PerDayWeather(
      icon: Icons.cloudy_snowing,
      time: '2 Pm',
      weather: 'Rainy',
      temperature: '9 c'),
];

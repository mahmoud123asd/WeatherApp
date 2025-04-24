import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class ColorTheme {
  final WeatherModel? weathermodel;
  ColorTheme({required this.weathermodel});
  MaterialColor getThemeColor() {
    if (weathermodel?.weatherCondition == null) {
      return Colors.blueGrey;
    } else if (weathermodel!.weatherCondition == 'Sunny') {
      return Colors.orange;
    } else if (weathermodel!.weatherCondition == 'clear') {
      return Colors.blue;
    } else if (weathermodel!.weatherCondition == 'Patchy rain nearby') {
      return Colors.lightBlue;
    } else if (weathermodel!.weatherCondition == 'Cloudy') {
      return Colors.cyan;
    } else if (weathermodel!.weatherCondition == 'Mist' ||
        weathermodel!.weatherCondition.contains('fog')) {
      return Colors.blueGrey;
    } else if (weathermodel!.weatherCondition.contains('Rain')) {
      return Colors.blue;
    } else if (weathermodel!.weatherCondition.contains('Sleet')) {
      return Colors.cyan;
    } else if (weathermodel!.weatherCondition.contains('Snow')) {
      return Colors.white as MaterialColor;
    } else if (weathermodel!.weatherCondition.contains('drizzle')) {
      return Colors.lightBlueAccent as MaterialColor;
    } else if (weathermodel!.weatherCondition.contains('thunder')) {
      return Colors.purple;
    } else if (weathermodel!.weatherCondition == 'Overcast') {
      return Colors.teal;
    } else if (weathermodel!.weatherCondition.contains('blizzard') ||
        weathermodel!.weatherCondition.contains('heavy snow')) {
      return Colors.grey;
    } else {
      return Colors.cyan;
    }
  }
}

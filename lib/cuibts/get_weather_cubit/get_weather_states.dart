import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weathermodel;
  WeatherLoadedState({required this.weathermodel});
}

class WeatherFailuerState extends WeatherState {
  final String errormessage;
  WeatherFailuerState({required this.errormessage});
}

class WeatherIsLoadingState extends WeatherState {}

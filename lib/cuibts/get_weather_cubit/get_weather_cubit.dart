import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cuibts/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weathermodel;
  getWeather({required String cityName}) async {
    try {
      emit(WeatherIsLoadingState());
      weathermodel = await WeatherService(Dio()).getWeather(cityName: cityName);
      emit(WeatherLoadedState(weathermodel: weathermodel!));
    } catch (e) {
      emit(WeatherFailuerState(errormessage: e.toString()));
    }
  }
}

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';
class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'aa9e0f7558b746b9867211725251904';
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      var response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
      WeatherModel weather = WeatherModel.fromjson(response.data);
      return weather;
    } on DioException catch (e) {
      final String errormessage = e.response?.data['error']['message'] ??
          'opps there was an error,try later!';
      throw Exception(errormessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error,try later!');
    }
  }
}

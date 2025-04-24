class WeatherModel {
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String image;
  final String weatherCondition;
  final DateTime date;
  final String cityName;
  WeatherModel(
      {required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.image,
      required this.weatherCondition,
      required this.date,
      required this.cityName});
  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      date: DateTime.parse(json['current']['last_updated']),
      cityName: json['location']['name'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
    );
  }
}

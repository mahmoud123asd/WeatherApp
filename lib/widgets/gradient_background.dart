import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cuibts/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/color_theme.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  const GradientBackground({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    WeatherModel? weathermodel =
        BlocProvider.of<GetWeatherCubit>(context).weathermodel;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          ColorTheme(weathermodel: weathermodel).getThemeColor(),
          ColorTheme(weathermodel: weathermodel).getThemeColor()[300]!,
          ColorTheme(weathermodel: weathermodel).getThemeColor()[50]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: child,
    );
  }
}

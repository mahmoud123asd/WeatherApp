import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:weather_app/cuibts/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cuibts/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/no_weather_body.dart';
import 'package:weather_app/screens/weather_error_body.dart';
import 'package:weather_app/screens/weather_info_body.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/gradient_background.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Weather App",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: [
                Shadow(
                  blurRadius: 8.0,
                  // ignore: deprecated_member_use
                  color: const Color.fromARGB(255, 42, 43, 44).withOpacity(0.5),
                  offset: const Offset(5, 5),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SearchView()));
              },
              icon: Icon(
                Icons.search,
              ),
            )
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is NoWeatherState) {
              return NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoBody(
                weathermodel: state.weathermodel,
              );
            } else if (state is WeatherFailuerState) {
              return WeatherErrorBody();
            } else {
              return Center(
                child: LoadingIndicator(
                  indicatorType: Indicator.ballClipRotatePulse,
                  colors: const [Colors.black],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

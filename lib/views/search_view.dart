import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cuibts/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/widgets/gradient_background.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            children: [
              Text(
                "Search City",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/clouds-and-sun (1).png",
                width: 150,
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                onSubmitted: (value) async {
                  BlocProvider.of<GetWeatherCubit>(context)
                      .getWeather(cityName: value);
                  Navigator.of(context).pop();
                },
                decoration: InputDecoration(
                  hintText: 'Search City',
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 157, 186, 204)),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

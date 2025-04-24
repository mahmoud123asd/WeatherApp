import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  final WeatherModel weathermodel;
  const WeatherInfoBody({super.key, required this.weathermodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weathermodel.cityName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        Text(
          'Updated at ${weathermodel.date.hour}:${weathermodel.date.minute}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CachedNetworkImage(
              imageUrl: "https:${weathermodel.image}",
              placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                color: Colors.blue,
              )),
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.fill,
              height: 50,
              width: 50,
            ),
            Text(
              "${weathermodel.temp.round()}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Column(
              children: [
                Text(
                  "Maxtemp:${weathermodel.maxTemp.round()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Mintemp:${weathermodel.minTemp.round()}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          weathermodel.weatherCondition,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        )
      ],
    );
  }
}

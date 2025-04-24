import 'package:flutter/material.dart';

class WeatherErrorBody extends StatelessWidget {
  const WeatherErrorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'There was an error, Try Again',
              style: TextStyle(fontFamily: 'second', fontSize: 23),
            ),
            const SizedBox(height: 14),
            Image.asset('assets/images/searchicon.png'),
          ],
        ),
      ),
    );
  }
}

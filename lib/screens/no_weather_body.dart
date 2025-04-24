import 'package:flutter/material.dart';
class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Center(
        child: Column(
          children: [
            Text(
              "There is No Weather!",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                shadows: [
                  Shadow(
                    blurRadius: 8.0,
                    color:
                        // ignore: deprecated_member_use
                        const Color.fromARGB(255, 42, 43, 44).withOpacity(0.5),
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
            ),
            Text(
              "Start Searching Now🔎",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/cloudy.png",
              width: 250,
            ),
          ],
        ),
      ),
    );
  }
}

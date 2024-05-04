
import 'package:flutter/material.dart';

import '../../data/today.dart';

class TempDownHomePage extends StatelessWidget {
  const TempDownHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: todayWeather.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                // color: Colors.red,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                height: 110,
                width: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 35, 55, 61).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      todayWeather[index].icon,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Text(
                      todayWeather[index].time,
                      style: TextStyle(
                          fontSize: 13, color: Colors.white.withOpacity(0.5)),
                    ),
                    Text(
                      todayWeather[index].weather,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      todayWeather[index].temperature,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          );
        },
      ),
    );
  }
}

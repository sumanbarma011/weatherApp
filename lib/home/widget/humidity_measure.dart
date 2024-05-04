import 'package:flutter/material.dart';

class HumidityMeasure extends StatelessWidget {
  const HumidityMeasure({
    required this.height,
    required this.icon,
    required this.percentage,
    required this.wheather,
    super.key,
  });
  final double height;
  final IconData icon;
  final String wheather;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 35, 55, 61).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.white.withOpacity(0.5),
          ),
          Text(
            wheather,
            style:
                TextStyle(fontSize: 13, color: Colors.white.withOpacity(0.5)),
          ),
          Text(
            percentage,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}

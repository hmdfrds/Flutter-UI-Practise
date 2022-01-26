import 'package:flutter/material.dart';


class DrinkHabitCard extends StatelessWidget {
  const DrinkHabitCard({Key? key, required this.image, required this.habit})
      : super(key: key);
  final String image;
  final String habit;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromRGBO(207, 242, 255, 1),
        ),
        width: 125.0,
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(
                habit,
                style: const TextStyle(
                    color: Color.fromRGBO(66, 158, 187, 1),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}

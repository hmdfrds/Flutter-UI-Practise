import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/drink_reminder_app/Widgets/drink_habit_card.dart';
import 'package:ui_practise/drink_reminder_app/Widgets/wave_clipper.dart';


class DrinkReminderApp3 extends StatefulWidget {
  const DrinkReminderApp3({Key? key}) : super(key: key);

  @override
  _DrinkReminderApp3State createState() => _DrinkReminderApp3State();
}

class _DrinkReminderApp3State extends State<DrinkReminderApp3> {
  var drinkHabitCards = [
    const DrinkHabitCard(image: "assets/drink_reminder_app/drink_4.png", habit: "Mineral Water"),
    const DrinkHabitCard(image: "assets/drink_reminder_app/drink_4.png", habit: "Morning Cofee"),
    const DrinkHabitCard(image: "assets/drink_reminder_app/drink_4.png", habit: "Nitrogen Water"),
    const DrinkHabitCard(image: "assets/drink_reminder_app/drink_4.png", habit: "Mineral Water"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Color.fromRGBO(66, 158, 187, 1),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Color.fromRGBO(66, 158, 187, 1),
              ))
        ],
        centerTitle: true,
        title: const Text(
          "Goals",
          style: TextStyle(
            color: Color.fromRGBO(66, 158, 187, 1),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: const Color.fromRGBO(231, 250, 254, 1),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Congratulation!",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 115, 152, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const Text(
                  "You've reaches the goal!",
                  style: TextStyle(
                      color: Color.fromRGBO(66, 158, 187, 1),
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  "assets/drink_reminder_app/drink_3.png",
                  width: 350,
                ),
                const Text(
                  "Your Drink Habits",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 115, 152, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 150.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return drinkHabitCards[index];
                    },
                    itemCount: drinkHabitCards.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 10);
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

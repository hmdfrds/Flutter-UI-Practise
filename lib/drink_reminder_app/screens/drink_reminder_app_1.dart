import 'package:flutter/material.dart';
import 'package:ui_practise/drink_reminder_app/Widgets/wave_clipper.dart';
import 'package:ui_practise/drink_reminder_app/screens/drink_reminder_app_2.dart';



class DrinkReminderApp1 extends StatefulWidget {
  const DrinkReminderApp1({Key? key}) : super(key: key);

  @override
  _DrinkReminderApp1State createState() => _DrinkReminderApp1State();
}

class _DrinkReminderApp1State extends State<DrinkReminderApp1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: ClipPath(
                  clipper: WaveClipper(),
                  child: Container(
                    color: const Color.fromRGBO(231, 250, 254, 1),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 80, right: 50, left: 50, bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Dr.ink",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(89, 220, 255, 1)),
                        ),
                        Text(
                          "Your drink assistance",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 115, 152, 1),
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/drink_reminder_app/drink_1.png"),
                    Column(
                      children: const [
                        Text(
                          "We will remind you",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 115, 152, 1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "drink everyday to keep",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 115, 152, 1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "your healthy",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 115, 152, 1),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DrinkReminderApp2()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(89, 220, 255, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 13, bottom: 13, left: 65, right: 65),
                          child: Text(
                            "Get started",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

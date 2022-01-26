import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:ui_practise/drink_reminder_app/Widgets/schedule_switch_tile.dart';
import 'package:ui_practise/drink_reminder_app/Widgets/wave_clipper.dart';

import 'drink_reminder_app_3.dart';


class DrinkReminderApp2 extends StatefulWidget {
  const DrinkReminderApp2({Key? key}) : super(key: key);

  @override
  _DrinkReminderApp2State createState() => _DrinkReminderApp2State();
}

class _DrinkReminderApp2State extends State<DrinkReminderApp2> {
  var scheduleList = [
    const ScheduleSwitchTile(
      title: "02.00 PM",
      subtitle: "200 ml",
    ),
    const ScheduleSwitchTile(
      title: "02.00 PM",
      subtitle: "200 ml",
    ),
    const ScheduleSwitchTile(
      title: "02.00 PM",
      subtitle: "200 ml",
    ),
    const ScheduleSwitchTile(
      title: "02.00 PM",
      subtitle: "200 ml",
    ),
    const ScheduleSwitchTile(
      title: "02.00 PM",
      subtitle: "200 ml",
    ),
  ];
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: Image.asset(
                              "assets/drink_reminder_app/drink_2_profile_picture.jpg")
                          .image,
                    ),
                    title: const Text(
                      "Good Afternoon",
                      style: TextStyle(
                          color: Color.fromRGBO(66, 158, 187, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    subtitle: const Text(
                      "David Margoute",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 115, 152, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DrinkReminderApp3()));
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Color.fromRGBO(89, 220, 255, 1),
                        )),
                  ),
                  const SizedBox(height: 30),
                  Flexible(
                    flex: 4,
                    child: Column(
                      children: [
                        const Text(
                          "Today's Goal",
                          style: TextStyle(
                            color: Color.fromRGBO(66, 158, 187, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Drink 1,500 ml",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 115, 152, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: const Offset(0, 10),
                              ),
                            ],
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: CircularPercentIndicator(
                                radius: 100.0,
                                lineWidth: 25.0,
                                animation: true,
                                percent: 0.65,
                                center: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "65%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(89, 220, 255, 1),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 30.0),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "525 ml",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 115, 152, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          "more",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 115, 152, 1),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                progressColor:
                                    const Color.fromRGBO(250, 210, 87, 1),
                                backgroundColor:
                                    const Color.fromRGBO(235, 249, 254, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(207, 242, 255, 1),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(35),
                              topLeft: Radius.circular(35))),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text(
                                  "Next Schedule :",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 115, 152, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                const SizedBox(height: 25),
                                Flexible(
                                  child: ListView.separated(
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return scheduleList[index];
                                    },
                                    itemCount: scheduleList.length,
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return const SizedBox(height: 10);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 365,
                right: 25,
                child: Image.asset("assets/drink_reminder_app/drink_2.png"),
                height: 125,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

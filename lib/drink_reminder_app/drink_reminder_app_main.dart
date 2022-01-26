import 'package:flutter/material.dart';
import 'package:ui_practise/drink_reminder_app/screens/drink_reminder_app_1.dart';

// design from https://dribbble.com/shots/17335138-Dr-ink-Drink-Reminder-App

class DrinkReminderAppMain extends StatelessWidget {
  const DrinkReminderAppMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent)),
        home: const DrinkReminderApp1());
  }
}

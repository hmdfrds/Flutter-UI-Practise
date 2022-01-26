import 'package:flutter/material.dart';
import 'package:ui_practise/azri_travel/screens/azri_travel_1.dart';

// screen dari azri tah mane die dpt
class AzriTravelMain extends StatelessWidget {
  const AzriTravelMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent)),
        home: const AzriTravel1());
  }
}

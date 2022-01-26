import 'package:flutter/material.dart';
import 'package:ui_practise/smart_home_azri/screens/smart_home_azri_1.dart';

// screen dari azri. tanye die kutip mane

class AzriSmartHomeMain extends StatelessWidget {
  const AzriSmartHomeMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent)),
        home: const SmartHomeAzri1());
  }
}

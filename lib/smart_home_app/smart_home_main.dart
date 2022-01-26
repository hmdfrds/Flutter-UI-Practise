import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practise/smart_home_app/providers/device_cards_provider.dart';
import 'package:ui_practise/smart_home_app/providers/slider_provider.dart';
import 'package:ui_practise/smart_home_app/screens/smart_home_app_1.dart';

// https://dribbble.com/shots/17341100-Smart-Home-App

class SmartHomeMain extends StatelessWidget {
  const SmartHomeMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderProvider()),
        ChangeNotifierProvider(create: (context) => DeviceCardProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomSheetTheme:
                const BottomSheetThemeData(backgroundColor: Colors.transparent),
            primarySwatch: Colors.blue,
          ),
          home: const SmartHomeApp1()),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_practise/Job%20Search%20Platform/screens/job_search_patform_1.dart';

// https://dribbble.com/shots/17353253-Job-Search-Platform-Mobile-App

class JobSearchPlatformMain extends StatelessWidget {
  const JobSearchPlatformMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent)),
        home: const JobSearchPlatform1());
  }
}

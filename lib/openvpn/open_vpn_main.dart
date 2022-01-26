import 'package:flutter/material.dart';
import 'package:ui_practise/openvpn/screens/open_vpn_1.dart';

// https://dribbble.com/shots/15519372-OPENVPN-App-Ui-Design

class OpenVpnMain extends StatelessWidget {
  const OpenVpnMain({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
                backgroundColor: Colors.transparent)),
        home: const OpenVpn1());
  }
}

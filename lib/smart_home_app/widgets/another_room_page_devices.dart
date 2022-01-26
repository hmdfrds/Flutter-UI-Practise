import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/smart_home_app/widgets/normal_devices_card.dart';

class AnotherRoomPageDevices extends StatefulWidget {
  const AnotherRoomPageDevices({Key? key}) : super(key: key);

  @override
  _AnotherRoomPageDevicesState createState() => _AnotherRoomPageDevicesState();
}

class _AnotherRoomPageDevicesState extends State<AnotherRoomPageDevices> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: const [
          NormalDevicesCard(
            icon: CupertinoIcons.thermometer,
            info: '25c',
            setting: 'Temperature',
          ),
          NormalDevicesCard(
            icon: CupertinoIcons.tv,
            info: 'TV3',
            setting: 'TV Set',
          ),
          NormalDevicesCard(
            icon: CupertinoIcons.speaker_2,
            info: '8/10',
            setting: 'Sounds',
          ),
          NormalDevicesCard(
            icon: Icons.light,
            info: 'On',
            setting: 'Light',
          ),
        ],
      ),
    );
  }
}

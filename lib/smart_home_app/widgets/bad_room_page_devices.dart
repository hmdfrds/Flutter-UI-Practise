import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/smart_home_app/widgets/normal_devices_card.dart';

class BadRoomPageDevices extends StatefulWidget {
  const BadRoomPageDevices({Key? key}) : super(key: key);

  @override
  _BadRoomPageDevicesState createState() => _BadRoomPageDevicesState();
}

class _BadRoomPageDevicesState extends State<BadRoomPageDevices> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: const [
          NormalDevicesCard(
            icon: Icons.light,
            info: 'On',
            setting: 'Light',
          ),
          NormalDevicesCard(
            icon: CupertinoIcons.device_laptop,
            info: 'Turned Off',
            setting: 'Laptop',
          ),
          NormalDevicesCard(
            icon: CupertinoIcons.thermometer,
            info: '25c',
            setting: 'Temperature',
          ),
         
        ],
      ),
    );
  }
}

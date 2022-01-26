import 'package:flutter/material.dart';

class ScheduleSwitchTile extends StatefulWidget {
  final String title;
  final String subtitle;
  const ScheduleSwitchTile(
      {Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  _ScheduleSwitchTileState createState() => _ScheduleSwitchTileState();
}

class _ScheduleSwitchTileState extends State<ScheduleSwitchTile> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: SwitchListTile(
        value: selected,
        onChanged: (value) {
          setState(() {
            selected = value;
          });
        },
        activeColor: Colors.white,
        activeTrackColor: const Color.fromRGBO(89, 220, 255, 1),
        selectedTileColor: Colors.white,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Color.fromRGBO(66, 158, 187, 1),
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          widget.subtitle,
          style: const TextStyle(
              color: Color.fromRGBO(66, 158, 187, 1),
              fontWeight: FontWeight.bold),
        ),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ),
    );
  }
}

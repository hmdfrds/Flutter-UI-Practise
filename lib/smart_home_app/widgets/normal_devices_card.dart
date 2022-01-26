import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practise/smart_home_app/providers/device_cards_provider.dart';

class NormalDevicesCard extends StatefulWidget {
  final IconData icon;
  final String info;
  final String setting;
  const NormalDevicesCard(
      {Key? key, required this.icon, required this.info, required this.setting})
      : super(key: key);

  @override
  State<NormalDevicesCard> createState() => _NormalDevicesCardState();
}

class _NormalDevicesCardState extends State<NormalDevicesCard> {
  @override
  Widget build(BuildContext context) {
    var deviceCardProvider = Provider.of<DeviceCardProvider>(context);
    bool isSelected() {
      if (widget.hashCode == deviceCardProvider.cardHashCode) {
        return true;
      }
      return false;
    }

    return GestureDetector(
      onTap: () {
        deviceCardProvider.setCardHashCode(widget.hashCode);
        setState(() {});
      },
      child: AnimatedContainer(
        height: isSelected() ? 205 : 200,
        width: isSelected() ? 170 : 165,
        decoration: BoxDecoration(
            boxShadow: [
              isSelected()
                  ? BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, 10),
                    )
                  : BoxShadow(
                      color: Colors.grey.withOpacity(0),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, 10),
                    ),
            ],
            color: isSelected() ? const Color.fromRGBO(86, 83, 234, 1) : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        duration: const Duration(milliseconds: 100),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      widget.icon,
                      size: 30,
                      color: isSelected() ? Colors.white : Colors.black,
                    ),
                    Text(
                      widget.info,
                      style: TextStyle(
                          color:
                              isSelected() ? Colors.white70 : Colors.black45),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.setting,
                      style: TextStyle(
                          color: isSelected() ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 20,
                      color: isSelected() ? Colors.white : Colors.black,
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

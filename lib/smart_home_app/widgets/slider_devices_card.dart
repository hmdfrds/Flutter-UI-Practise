import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practise/smart_home_app/providers/device_cards_provider.dart';

class SliderDevicesCard extends StatefulWidget {
  const SliderDevicesCard({Key? key}) : super(key: key);

  @override
  State<SliderDevicesCard> createState() => _SliderDevicesCardState();
}

class _SliderDevicesCardState extends State<SliderDevicesCard> {
  double sliderValue = 50;

  int getBrightness() {
    return (255 * (sliderValue / 100)).toInt();
  }

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
              color:
                  isSelected() ? const Color.fromRGBO(86, 83, 234, 1) : Colors.white,
              borderRadius: BorderRadius.circular(20)),
          duration: const Duration(milliseconds: 100),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.wb_sunny_outlined,
                      size: 30,
                      color: isSelected()
                          ? Color.fromRGBO(getBrightness(), getBrightness(),
                              getBrightness(), 1)
                          : Color.fromRGBO(0, 0, getBrightness(), 1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${sliderValue.toStringAsFixed(0)}%",
                          style: TextStyle(
                              color: isSelected() ? Colors.white : Colors.black,
                              fontSize: 20),
                        ),
                        Text(
                          "Brightness",
                          style: TextStyle(
                              color: isSelected()
                                  ? Colors.white54
                                  : Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: isSelected()
                            ? Colors.white
                            : const Color.fromRGBO(86, 83, 234, 1),
                        inactiveTrackColor:
                            isSelected() ? Colors.blue : Colors.blue,
                        trackShape: const RoundedRectSliderTrackShape(),
                        rangeThumbShape: const RoundRangeSliderThumbShape(),
                        trackHeight: 25.0,
                        thumbColor: Colors.lightBlueAccent,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 14.0),
                        rangeTrackShape: const RoundedRectRangeSliderTrackShape()),
                    child: Slider(
                      min: 0,
                      max: 100,
                      value: sliderValue,
                      onChanged: (value) {
                        deviceCardProvider.setCardHashCode(widget.hashCode);

                        sliderValue = value;
                        
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

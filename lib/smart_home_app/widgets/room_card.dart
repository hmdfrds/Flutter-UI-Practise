import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practise/smart_home_app/providers/slider_provider.dart';

class RoomCard extends StatefulWidget {
  final IconData roomIcon;
  final String roomName;
  final int deviceNumber;
  final int cardIndex;
  final bool dotOn;

  const RoomCard({
    Key? key,
    required this.roomIcon,
    required this.roomName,
    required this.deviceNumber,
    required this.cardIndex,
    required this.dotOn,
  }) : super(key: key);

  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
  @override
  Widget build(BuildContext context) {
    var sliderProvider = Provider.of<SliderProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            color: sliderProvider.currentSliderPage == widget.cardIndex
                ? const Color.fromRGBO(86, 83, 234, 1)
                : Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              sliderProvider.currentSliderPage == widget.cardIndex
                  ? BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, 10),
                    )
                  : const BoxShadow(),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      widget.roomIcon,
                      color:
                          sliderProvider.currentSliderPage == widget.cardIndex
                              ? Colors.white
                              : Colors.black54,
                      size: 40,
                    ),
                    Icon(
                      Icons.circle,
                      color: widget.dotOn
                          ? (sliderProvider.currentSliderPage ==
                                  widget.cardIndex
                              ? Colors.white
                              : Colors.black26)
                          : Colors.transparent,
                      size: 10,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.roomName,
                      style: TextStyle(
                          color: sliderProvider.currentSliderPage ==
                                  widget.cardIndex
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${widget.deviceNumber} devices",
                      style: TextStyle(
                          color: sliderProvider.currentSliderPage ==
                                  widget.cardIndex
                              ? Colors.white54
                              : Colors.black54),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_practise/smart_home_app/providers/slider_provider.dart';
import 'package:ui_practise/smart_home_app/screens/smart_home_app_2.dart';
import 'package:ui_practise/smart_home_app/widgets/another_room_page_devices.dart';
import 'package:ui_practise/smart_home_app/widgets/bad_room_page_devices.dart';
import 'package:ui_practise/smart_home_app/widgets/living_room_page_devices.dart';

import 'package:ui_practise/smart_home_app/widgets/room_card.dart';

class SmartHomeApp1 extends StatefulWidget {
  const SmartHomeApp1({Key? key}) : super(key: key);

  @override
  State<SmartHomeApp1> createState() => _SmartHomeApp1State();
}

class _SmartHomeApp1State extends State<SmartHomeApp1> {
  final CarouselController _controller = CarouselController();

  var items = [
    const RoomCard(
      roomIcon: Icons.chair,
      roomName: "Living room",
      deviceNumber: 6,
      cardIndex: 0,
      dotOn: true,
    ),
    const RoomCard(
      roomIcon: Icons.bed,
      roomName: "Bad room",
      deviceNumber: 3,
      cardIndex: 1,
      dotOn: false,
    ),
    const RoomCard(
      roomIcon: Icons.shower_outlined,
      roomName: "Bath room",
      deviceNumber: 4,
      cardIndex: 2,
      dotOn: true,
    ),
    const RoomCard(
      roomIcon: Icons.dining_outlined,
      roomName: "Dining room",
      deviceNumber: 2,
      cardIndex: 3,
      dotOn: true,
    ),
    const RoomCard(
      roomIcon: Icons.menu_book,
      roomName: "Study room",
      deviceNumber: 3,
      cardIndex: 4,
      dotOn: false,
    ),
    const RoomCard(
      roomIcon: Icons.house,
      roomName: "Out Door",
      deviceNumber: 4,
      cardIndex: 5,
      dotOn: true,
    ),
  ];

  var pages = [
    const LivingRoomPageDevices(),
    const BadRoomPageDevices(),
    const AnotherRoomPageDevices(),
    const AnotherRoomPageDevices(),
    const AnotherRoomPageDevices(),
    const AnotherRoomPageDevices(),
  ];

  @override
  Widget build(BuildContext context) {
    var sliderProvider = Provider.of<SliderProvider>(context);
    return SafeArea(
      child: Scaffold(
        bottomSheet: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: const Offset(0, 0))
            ], color: Colors.white, borderRadius: BorderRadius.circular(50)),
            width: double.infinity,
            height: 80,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SmartHomeApp2()));
                    },
                    child: const CircleAvatar(
                      radius: 40,
                      backgroundColor: Color.fromRGBO(86, 83, 234, 1),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.graphic_eq_rounded,
                    size: 40,
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(240, 243, 251, 1),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                actions: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                            "assets/smart_home_app/smart_home_app_1.jpg")
                        .image,
                  ),
                  const SizedBox(width: 20),
                ],
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
             
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                      viewportFraction: 0.4,
                      aspectRatio: 1.0,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlay: false,
                      onPageChanged: (page, reason) {
                        setState(() {
                          sliderProvider.setSliderPage(page);
                          _controller.animateToPage(page);
                        });
                      }),
                  items: items,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Devices",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 1000,
                    child: CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          viewportFraction: 1,
                          aspectRatio: 0.1,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                          autoPlay: false,
                          onPageChanged: (page, reason) {}),
                      items: pages,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

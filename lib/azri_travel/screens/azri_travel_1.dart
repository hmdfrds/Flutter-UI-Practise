import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/azri_travel/widgets/categories_widget.dart';
import 'package:ui_practise/azri_travel/widgets/top_trips_widget.dart';

class AzriTravel1 extends StatelessWidget {
  const AzriTravel1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: Container(
          margin: const EdgeInsets.only(right: 25, left: 25, bottom: 25),
          width: double.infinity,
          height: 75,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.red),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
                child: const Icon(
                  CupertinoIcons.compass,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
                child: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black),
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: Image.asset(
                            "assets/azri_travel/azri_2_profile_picture.jpg")
                        .image,
                  ),
                  title: const Text(
                    "Hi, Jennifer!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  trailing: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 15,
                              offset: const Offset(0, 5)),
                        ],
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white),
                    child: const Icon(Icons.notifications_outlined),
                  ),
                ),
              ),
              Container(
                width: 500,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: const Text(
                  "Where do you want to go?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: const Offset(0, 5)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Search for places",
                          style: TextStyle(
                              color: Colors.black26,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 15,
                                    offset: const Offset(0, 5)),
                              ],
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: const Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                        ),
                      ]),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    CategoriesWidget(
                        activity: "Camp",
                        imageUrl:
                            "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg"),
                    CategoriesWidget(
                        activity: "Gotong Royong",
                        imageUrl:
                            "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg"),
                    CategoriesWidget(
                        activity: "Sap Weed",
                        imageUrl:
                            "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg"),
                    CategoriesWidget(
                        activity: "Masak",
                        imageUrl:
                            "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Top trips",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Explore",
                          style: TextStyle(fontSize: 20, color: Colors.black26),
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          size: 15,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                height: 230,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    TopTripWidget(
                      price: 150,
                      imageUrl:
                          "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg",
                      name: "Banjir kanal",
                      activity: "Camp",
                    ),
                    TopTripWidget(
                      price: 150,
                      imageUrl:
                          "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg",
                      name: "Banjir Sikit",
                      activity: "Gotong Royong",
                    ),
                    TopTripWidget(
                      price: 150,
                      imageUrl:
                          "https://cari-homestay.com/wp-content/uploads/2019/08/Parende-Wakatobi.jpg",
                      name: "Banjir Kilat",
                      activity: "Noh",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_practise/azri_travel/screens/azri_travel_2.dart';

class TopTripWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String activity;
  final int price;
  const TopTripWidget(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.activity,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AzriTravel2()));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
        width: 155,
        height: 150,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 15,
              offset: const Offset(0, 5)),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 15,
                                offset: const Offset(0, 5)),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 50,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "\$$price",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 105,
                        child: Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 105,
                        child: Text(
                          activity,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black26),
                        ),
                      ),
                    ],
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
                        Icons.favorite_outline_outlined,
                        color: Colors.red,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

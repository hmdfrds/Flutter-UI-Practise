import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final String activity;
  final String imageUrl;
  const CategoriesWidget(
      {Key? key, required this.activity, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        margin: const EdgeInsets.only(right: 25),
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
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: const Offset(0, 5)),
              ], color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              activity,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            )
          ]),
        ),
      ),
    );
  }
}

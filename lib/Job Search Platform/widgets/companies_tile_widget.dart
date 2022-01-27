import 'package:flutter/material.dart';

class CompaniesTile extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String rating;
  final String location;
  final int vacancy;
  const CompaniesTile(
      {Key? key,
      required this.imageUrl,
      required this.companyName,
      required this.rating,
      required this.location,
      required this.vacancy})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ListTile(
        isThreeLine: true,
        title: SizedBox(
          child: Text(
            companyName,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.transparent,
            width: 60,
            height: 100,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star_outline_rounded,
                  color: Colors.deepOrange,
                ),
                Text(rating),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.black38,
                ),
                Expanded(child: Text(location))
              ],
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.work,
                  color: Colors.deepOrange,
                ),
                Text(" $vacancy Vacancy"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

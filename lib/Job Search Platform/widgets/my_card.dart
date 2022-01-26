import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final int color;
  final String text;
  final IconData icon;
  const MyCard({Key? key, required this.color, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color blue = const Color.fromRGBO(
      255,
      243,
      255,
      1,
    );
    Color red = const Color.fromRGBO(
      255,
      240,
      215,
      1,
    );
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color == 0 ?red : blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 5,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child:  Icon(
                icon,
                size: 30,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black.withOpacity(0.1)),
            ),
            const Spacer(
              flex: 3,
            ),
             SizedBox(
              width: double.infinity,
              child: Text(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}

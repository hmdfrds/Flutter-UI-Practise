import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/job_search/job_search_profile.jpg",
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/Job%20Search%20Platform/widgets/app_bar.dart';
import 'package:ui_practise/Job%20Search%20Platform/widgets/my_card.dart';
import 'package:ui_practise/Job%20Search%20Platform/widgets/search_bar.dart';

class JobSearchPlatform1 extends StatelessWidget {
  const JobSearchPlatform1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyAppBar(),
            )),
        backgroundColor: const Color.fromRGBO(248, 246, 245, 1),
        body: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                flex: 3,
                child: FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/job_search/job_search_logo.png",
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Milao",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(flex: 1, child: Container()),
              const Flexible(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "You deserve a job",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "that loves you back",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Flexible(flex: 1, child: Container()),
              Flexible(
                flex: 5,
                child: Row(
                  children: [
                    const Expanded(flex: 50, child: SearchBar()),
                    const SizedBox(width: 15),
                    Expanded(
                      flex: 10,
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: const Icon(
                            Icons.filter_alt_sharp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(flex: 1, child: Container()),
              Flexible(
                flex: 17,
                child: Row(
                  children: const [
                    MyCard(
                      text: "Upload your Resume",
                      color: 1,
                      icon: Icons.upload_file,
                    ),
                    SizedBox(width: 15),
                    MyCard(
                      text: "Create Job Alert",
                      color: 0,
                      icon: Icons.notifications_none_outlined,
                    ),
                  ],
                ),
              ),
              Flexible(flex: 1, child: Container()),
              Flexible(
                  flex: 3,
                  child: Row(
                    children: const [
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          "Best-of List",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )),
              Flexible(flex: 1, child: Container()),
              Flexible(
                flex: 17,
                child: Row(
                  children: const [
                    MyCard(
                      text: "Best Company to Work",
                      color: 0,
                      icon: Icons.location_city,
                    ),
                    SizedBox(width: 15),
                    MyCard(
                      text: "Best Job for You",
                      color: 1,
                      icon: CupertinoIcons.search_circle,
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

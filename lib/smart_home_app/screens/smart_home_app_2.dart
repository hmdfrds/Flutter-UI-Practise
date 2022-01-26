import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartHomeApp2 extends StatefulWidget {
  const SmartHomeApp2({Key? key}) : super(key: key);

  @override
  _SmartHomeApp2State createState() => _SmartHomeApp2State();
}

class _SmartHomeApp2State extends State<SmartHomeApp2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.chevron_left_outlined,
          color: Colors.white,
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/smart_home_app/smart_home_app_2.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(children: [
                Expanded(flex: 1, child: Container()),
                const Expanded(
                  flex: 1,
                  child: Text(
                    "I'm your voice helper!",
                    style: TextStyle(color: Colors.black45, fontSize: 15),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: const Text(
                      "I will be falling you",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 30),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        CupertinoIcons.keyboard,
                        color: Colors.black,
                        size: 40,
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromRGBO(86, 83, 234, 1),
                        child: Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: Colors.black,
                      )
                    ],
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    ));
  }
}

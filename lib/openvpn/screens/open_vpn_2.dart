import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpenVpn2 extends StatelessWidget {
  const OpenVpn2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            title: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "OPEN",
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "VPN",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                ]),
            actions: const [
              Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              )
            ]),
        body: Stack(
          children: [
            const Positioned.fill(
                child: Opacity(
              opacity: 0.1,
              child: Image(
                image: AssetImage("assets/open_vpn/open_vpn_3.png"),
                fit: BoxFit.fill,
              ),
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.shieldAlt,
                    color: Colors.teal,
                    size: 40,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Connected",
                        style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.check_circle_outline_outlined,
                        size: 25,
                        color: Colors.teal,
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "00:24:37",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 45),
                  ),
                  const SizedBox(height: 40),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        Image.asset("assets/open_vpn/open_vpn_2.png").image,
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "United Stated",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 23),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "NewYork",
                    style: TextStyle(color: Colors.black54, fontSize: 17),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.download,
                        color: Colors.blue,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: const [
                          Text(
                            "219.3",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text("/kb"),
                        ],
                      ),
                      const SizedBox(width: 50),
                      const Icon(
                        Icons.upload,
                        color: Colors.red,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: const [
                          Text(
                            "145.7",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text("/kb"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: const Offset(0, 10),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.power,
                          size: 40,
                        ),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: const BorderSide(color: Colors.black))),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(20)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.red;
                            }
                            return null;
                          }),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

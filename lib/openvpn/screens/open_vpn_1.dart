import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/openvpn/screens/open_vpn_2.dart';
import 'package:ui_practise/openvpn/screens/wave_clipper.dart';

class OpenVpn1 extends StatefulWidget {
  const OpenVpn1({Key? key}) : super(key: key);

  @override
  _OpenVpn1State createState() => _OpenVpn1State();
}

class _OpenVpn1State extends State<OpenVpn1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
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
        fit: StackFit.loose,
        clipBehavior: Clip.antiAlias,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: ExpansionTile(
                  trailing: const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 20,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage:
                        Image.asset("assets/open_vpn/open_vpn_2.png").image,
                  ),
                  title: const Text(
                    "United States",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  subtitle: const Text(
                    "NewYork",
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/open_vpn/open_vpn_1.png",
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(height: 50),
                        ListTile(
                          leading: const Icon(
                            Icons.miscellaneous_services_rounded,
                            color: Colors.black,
                          ),
                          title: const Text(
                            "Service",
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("VPN"),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.shield,
                            color: Colors.black,
                          ),
                          title: const Text(
                            "VPN Protocol",
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text("Auto"),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chevron_right_rounded,
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 145,
            bottom: 190,
            child: Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpenVpn2()));
                  },
                  child: const Icon(
                    CupertinoIcons.rocket_fill,
                    size: 40,
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(color: Colors.red))),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.redAccent),
                    overlayColor:
                        MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.lightBlueAccent;
                      }
                      return null;
                    }),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

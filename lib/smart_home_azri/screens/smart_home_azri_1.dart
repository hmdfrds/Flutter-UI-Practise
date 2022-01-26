import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartHomeAzri1 extends StatelessWidget {
  const SmartHomeAzri1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var devices = [
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
      const DevicesTileWidget(),
    ];

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_rounded),
            ),
            BottomNavigationBarItem(
              label: "Scene",
              icon: Icon(Icons.check_box_outlined),
            ),
            BottomNavigationBarItem(
              label: "Smart",
              icon: Icon(CupertinoIcons.cube),
            ),
            BottomNavigationBarItem(
              label: "Me",
              icon: Icon(CupertinoIcons.person_alt_circle),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 15,
              left: 15,
            ),
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.person,
                      color: Colors.black,
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.mic,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.add_circled_solid,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "All Devices",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
                  ],
                ),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return devices[index];
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: devices.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DevicesTileWidget extends StatelessWidget {
  const DevicesTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListTile(
            leading: const Icon(
              Icons.power,
              size: 40,
            ),
            title: const Text("SMART socket"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.power_settings_new_rounded,
                      size: 15,
                    ),
                    const Text("ON"),
                    Flexible(flex: 2, child: Container()),
                    const Icon(
                      Icons.wb_sunny_rounded,
                      size: 15,
                    ),
                    const Text("100%"),
                    Flexible(flex: 2, child: Container()),
                    const Icon(
                      CupertinoIcons.circle_righthalf_fill,
                      size: 15,
                    ),
                    const Text("3%"),
                    Flexible(flex: 2, child: Container()),
                    const Icon(
                      CupertinoIcons.time,
                      size: 15,
                    ),
                    const Text("0 s"),
                    Flexible(flex: 10, child: Container()),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  "~Common Functions",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.greenAccent),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.power_settings_new_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

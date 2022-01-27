import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practise/Job%20Search%20Platform/widgets/companies_tile_widget.dart';

class JobSearchPlatform2 extends StatelessWidget {
  const JobSearchPlatform2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var companies = [
      const CompaniesTile(
          companyName: 'Amazon.com',
          imageUrl:
              "https://pbs.twimg.com/profile_images/1399841195816144898/J0itvSWJ_400x400.jpg",
          rating: "4.8",
          location: "New york, USA",
          vacancy: 1),
      const CompaniesTile(
          companyName: 'Amazon.com',
          imageUrl:
              "https://www.thesundaily.my/binrepository/maybank_96855_20190102221330.jpg",
          rating: "4.3",
          location: "Kuala Lumpur, Malaysia",
          vacancy: 3),
      const CompaniesTile(
          companyName: 'Dell Technologies',
          imageUrl:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Dell_Logo.svg/1024px-Dell_Logo.svg.png",
          rating: "4.1",
          location: "Kuantan, Malaysia",
          vacancy: 1),
      const CompaniesTile(
          companyName: 'Pos Laju',
          imageUrl:
              "https://upload.wikimedia.org/wikipedia/en/thumb/8/80/Pos_Malaysia_Logo.svg/1200px-Pos_Malaysia_Logo.svg.png",
          rating: "3.9",
          location: "Johor Bahru, Johor la bodo",
          vacancy: 2),
      const CompaniesTile(
          companyName: 'Google',
          imageUrl:
              "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
          rating: "3.8",
          location: "Durian Tunggal, UTeM",
          vacancy: 0),
      const CompaniesTile(
          companyName: 'Amazon.com',
          imageUrl:
              "https://pbs.twimg.com/profile_images/1399841195816144898/J0itvSWJ_400x400.jpg",
          rating: "2.8",
          location: "New york, USA",
          vacancy: 1),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(248, 246, 245, 1),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leadingWidth: 0,
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Expanded(
                      flex: 50,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Companies",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                    ),
                    const Expanded(flex: 20, child: SizedBox()),
                    Expanded(
                      flex: 40,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(122, 165, 96, 1)),
                        child: Row(
                          children: const [
                            Expanded(
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  "Worldwide",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Icon(
                                  Icons.filter_alt,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return companies[index];
                    }),
                    separatorBuilder: (context, inde) {
                      return const SizedBox(height: 10);
                    },
                    itemCount: companies.length)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

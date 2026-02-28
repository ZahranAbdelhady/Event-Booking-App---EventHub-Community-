import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/search/widgets/MainCardListTile.dart';

class OrganizerProfile extends StatefulWidget {
  const OrganizerProfile({super.key});
  static const routName = "OrganizerProfile";

  @override
  State<OrganizerProfile> createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.more_vert)],
          // bottom: TabBar(
          //   indicatorColor: AppColors.contHome,
          //   indicatorWeight: 5,
          //   tabs: [
          //     Tab(child: Text("About", style: AppStyles.w400s16TextIconblue)),
          //     Tab(child: Text("Event", style: AppStyles.w400s16TextIconblue)),
          //     Tab(child: Text("Reviews", style: AppStyles.w400s16TextIconblue)),
          //   ],
          // ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.iconprofile),
                  ),
                  borderRadius: BorderRadius.circular(48),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text("Ahmed Sayed", style: AppStyles.w400s24black),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("350"),
                    Text("Following", style: AppStyles.w400s16TextIconblack),
                  ],
                ),
                SizedBox(width: 12),
                Container(width: 2, height: 26, color: Colors.grey),
                SizedBox(width: 12),
                Column(
                  children: [
                    Text("346"),
                    Text("Followers", style: AppStyles.w400s16TextIconblack),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Container(
                    width: 154,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.containeronboarding1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.person_add),
                        Text("Follow", style: AppStyles.w400s15white),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 154,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,

                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.message),
                        Text("Massages", style: AppStyles.w400s16TextIconblue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              indicatorColor: AppColors.contHome,
              indicatorWeight: 5,
              tabs: [
                Tab(child: Text("About", style: AppStyles.w400s16TextIconblue)),
                Tab(child: Text("Event", style: AppStyles.w400s16TextIconblue)),
                Tab(
                  child: Text("Reviews", style: AppStyles.w400s16TextIconblue),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Enjoy your favorite dishe and a lovely your \nfriends and family and have a great time. \nFood from local food trucks will be available \nfor purchase. Read More",
                        style: AppStyles.w400s16TextIconblack,
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          cardListTile(
                            images: AppImages.search1,
                            title: "1st  May- Sat -2:00 PM",
                            subtitle: "A virtual evening of \nsmooth jazz",
                          ),
                          SizedBox(height: 15),
                          cardListTile(
                            images: AppImages.search2,
                            title: "1st  May- Sat -2:00 PM",
                            subtitle: "Jo malone london’s \nmother’s day",
                          ),
                          SizedBox(height: 15),
                          cardListTile(
                            images: AppImages.search5,
                            title: "1st  May- Sat -2:00 PM",
                            subtitle: "Women's leadership \nconference",
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(AppImages.rev),
                              title: Text(
                                "Ali Hassan",
                                style: AppStyles.w400s24black,
                              ),
                              trailing: Text("10 Feb"),
                              subtitle: Text(
                                "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(AppImages.rev),
                              title: Text(
                                "kream sayed",
                                style: AppStyles.w400s24black,
                              ),
                              trailing: Text("10 Feb"),
                              subtitle: Text(
                                "Cinemas is the ultimate experience to see new movies in Gold Class or Vmax. Find a cinema near you.",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(AppImages.rev),
                              title: Text(
                                "shiko bnz",
                                style: AppStyles.w400s24black,
                              ),
                              trailing: Text("10 Feb"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

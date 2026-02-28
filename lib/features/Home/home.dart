import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/EmptyEvents/EmptyEvents.dart';
import 'package:sesion_8/features/EventDetails/EventsDetails.dart';
import 'package:sesion_8/features/Filter/Filters.dart';
import 'package:sesion_8/features/Home/widgets/Maindrawer.dart';
import 'package:sesion_8/features/SeeAllEvents/SeeAllEvents.dart';
import 'package:sesion_8/features/notification/Notification.dart';
import 'package:sesion_8/features/search/search.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});
  static const routName = "HomePages";

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.contHome,
        title: Column(
          children: [
            Text("Current Location", style: AppStyles.w400s14white),
            Text("Current Location", style: AppStyles.w400s15white),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 36,
              height: 36,
              // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.deepPurpleAccent,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Notifications.routName);
                },
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 179,

                    decoration: BoxDecoration(
                      color: AppColors.contHome,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(33),
                        bottomRight: Radius.circular(33),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 8),
                          Container(height: 26, width: 2, color: Colors.grey),
                          SizedBox(width: 8),
                          Container(
                            width: 71,
                            // height: 26,
                            child: TextFormField(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).pushNamed(Search.routName);
                              },
                              controller: search,
                              decoration: InputDecoration(
                                hint: Text(
                                  "Search",
                                  style: AppStyles.w400s22White,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Filters.routName);
                            },
                            child: Container(
                              width: 75,
                              decoration: BoxDecoration(
                                color: Color(0xff5D56F3),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.filter_list),
                                  Text(
                                    "Filters",
                                    style: AppStyles.w400s15white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //   SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Text("Upcoming Events", style: AppStyles.w400s24black),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              (context),
                              EmptyEvents.routName,
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, EventsDetails.routName);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 131,

                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Image(image: AssetImage(AppImages.homeone)),
                                // Container(
                                //   width: 45,
                                //   height: 47,
                                //   color: Colors.blueGrey,
                                // ),
                                SizedBox(width: 10),
                                Image.asset(AppImages.hometwo),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "International Band Mu...",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: AppColors.signblack,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(AppImages.statcimage),
                                  SizedBox(width: 9),
                                  Image.asset(AppImages.statcimage),
                                  SizedBox(width: 9),
                                  Image.asset(AppImages.statcimage),
                                ],
                              ),
                              SizedBox(width: 8),
                              Text(
                                "+20 Going",
                                style: AppStyles.w400s16TextIconblue,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.location_pin),
                              Text(
                                "36 Guild Street London , Uk",
                                style: AppStyles.w400s16TextIconblue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 127,
                      color: Color(0xFF4A43EC),

                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Invite your friends",
                                  style: AppStyles.w400s16TextIconblack,
                                ),
                                Text(
                                  "Get \$20 for ticket",
                                  style: AppStyles.w400s15white,
                                ),
                                MaterialButton(
                                  color: Color(0xFF00F8FF),
                                  onPressed: () {},
                                  child: Text(
                                    "INVITE",
                                    style: AppStyles.w500s20White,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/Group 33650.png"),
                            width: 203,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Nearby You", style: AppStyles.w400s24black),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              (context),
                              SeeAllEvents.routName,
                            );
                          },
                          child: Row(
                            children: [
                              Text(
                                "See All",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}

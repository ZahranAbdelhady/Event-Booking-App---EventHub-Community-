import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/EmptyEvents/widgets/MainContainer.dart';
import 'package:sesion_8/features/EventDetails/widgets/MainListtileevents.dart';
import 'package:sesion_8/features/Home/home.dart';
import 'package:sesion_8/features/InviteFriendv1/InviteFriend.dart';
import 'package:sesion_8/features/OrganizerProfile/OrganizerProfileAbout.dart';

class EventsDetails extends StatelessWidget {
  const EventsDetails({super.key});
  static const routName = "EventDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 221,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.eventDetials),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, HomePages.routName);
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: AppColors.primaryWhite,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Event Details",
                              style: AppStyles.w500s25White,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            child: Container(
                              width: 36,
                              height: 36,

                              decoration: BoxDecoration(
                                color: Color.fromARGB(68, 255, 255, 255),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.bookmark,
                                color: AppColors.primaryWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "International Band \nMusic Concert",
                          style: AppStyles.w400s35black,
                        ),

                        Column(
                          children: [
                            MainListtileevents(
                              iconer: Icons.calendar_month,
                              title: '14 December, 2021',
                              subtitle: 'Tuesday, 4:00PM - 9:00PM',
                            ),
                            MainListtileevents(
                              iconer: Icons.pin_drop,
                              title: "Gala Convention Center",
                              subtitle: "36 Guild Street London, UK ",
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  OrganizerProfile.routName,
                                );
                              },
                              child: ListTile(
                                leading: Image.asset(AppImages.listtile),
                                title: Text(
                                  "Ashfak Sayem",
                                  style: AppStyles.w400s16TextIconblack,
                                ),
                                subtitle: Text(
                                  "Organizer",
                                  style: AppStyles.w400s14white,
                                ),
                                trailing: Container(
                                  width: 60,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    color: AppColors.containeronboarding1,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Follow",
                                      style: AppStyles.w400s15white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "About Event",
                                  style: AppStyles.w400s35black,
                                ),
                                Text(
                                  "Enjoy your favorite dishe and a lovely your \nfriends and family and have a great time. \nFood from local food trucks will be available \nfor purchase. Read More",
                                ),
                                SizedBox(height: 10),
                                Center(
                                  child: mainContainer(
                                    text: "Buy Ticket \$120",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 480,
            child: Center(
              child: Container(
                width: 300,
                height: 65,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: AppColors.primaryWhite,
                ),
                child: Row(
                  children: [
                    Image.asset(AppImages.stackimage),
                    Image.asset(AppImages.statcimage),
                    Image.asset(AppImages.stackimage),
                    SizedBox(width: 8),
                    Text("+20 Going", style: AppStyles.w400s16TextIconblue),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, InviteFriend.routName);
                      },
                      child: Container(
                        width: 67,
                        height: 28,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.contHome,
                        ),
                        child: Center(
                          child: Text("Invite", style: AppStyles.w400s15white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

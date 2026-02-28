import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/EmptyEvents/widgets/MainContainer.dart';
import 'package:sesion_8/features/InviteFriendv1/widgets/listTileFriends.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});
  static const routName = "InviteFriend";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  //   height: 741,
                  decoration: BoxDecoration(
                    color: AppColors.primaryWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(38),
                      topRight: Radius.circular(38),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Invite Friend", style: AppStyles.w400s24black),
                        SizedBox(height: 25),
                        TextFormField(
                          decoration: InputDecoration(
                            hint: Text("Search", style: AppStyles.w400s14white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            suffixIcon: Icon(
                              Icons.search,
                              color: AppColors.contHome,
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              ListtileFriends(
                                images: AppImages.icondrwa,
                                title: 'Alex Lee',
                                subtitle: '2k Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.stackimage,
                                title: 'Ahmed Sayed',
                                subtitle: '55 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.statcimage,
                                title: 'Hassan Abdelhady',
                                subtitle: '300 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.iconprofile,
                                title: 'Alaa Ali',
                                subtitle: '402 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.icondrwa,
                                title: 'Wael saad',
                                subtitle: '5k Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.stackimage,
                                title: 'Nasser Elbrens',
                                subtitle: '893 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.statcimage,
                                title: 'Fahd Alex',
                                subtitle: '225 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.iconprofile,
                                title: 'Cristofer Nolan ',
                                subtitle: '322 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.icondrwa,
                                title: 'Fahd Alex',
                                subtitle: '205 Follwers',
                              ),
                              ListtileFriends(
                                images: AppImages.stackimage,
                                title: 'Cristofer Nolan ',
                                subtitle: '3k Follwers',
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
            SizedBox(
              height: 1300,
              child: Center(child: mainContainer(text: "Invite")),
            ),
          ],
        ),
      ),
    );
  }
}

//

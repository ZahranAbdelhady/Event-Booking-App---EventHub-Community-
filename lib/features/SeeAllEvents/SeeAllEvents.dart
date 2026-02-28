import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/SeeAllEvents/widgets/mainListtileAllEvents.dart';

class SeeAllEvents extends StatelessWidget {
  const SeeAllEvents({super.key});
  static const routName = "SeeAllEvents";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        //  SizedBox(width: 15),
        title: Text("Events", style: AppStyles.w400s24black),
        actions: [
          Icon(Icons.search, size: 35),
          Icon(Icons.more_vert, size: 35),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            mainListtileAllEvents(
              images: AppImages.search2,
              title: 'Wed, Apr 28 •5:30 PM',
              subtitle: 'Jo Malone London’s Mother’s \nDay Presents',
              text: 'Radius Gallery • Santa Cruz, CA',
            ),
            mainListtileAllEvents(
              images: AppImages.search1,
              title: "Sat, May 1 •2:00 PM",
              subtitle: "A Virtual Evening of \nSmooth Jazz",
              text: "Lot 13 • Oakland, CA",
            ),
            //3
            mainListtileAllEvents(
              images: AppImages.search5,
              title: "Sat, Apr 24 •1:30 PM",
              subtitle: "Women's Leadership \nConference 2021",
              text: "53 Bush St • San Francisco, CA",
            ),
            //4
            mainListtileAllEvents(
              images: AppImages.search4,
              title: "Fri, Apr 23 •6:00 PM",
              subtitle: "International Kids Safe \nParents Night Out",
              text: "Lot 13 • Oakland, CA",
            ),
            //5
            mainListtileAllEvents(
              images: AppImages.event5,
              title: "Mon, Jun 21 •10:00 PM",
              subtitle: "Collectivity Plays the Music \nof Jimi ",
              text: "Longboard Margarita Bar",
            ),
            //6
            mainListtileAllEvents(
              images: AppImages.search5,
              title: "Sun, Apr 25 •10:15 AM",
              subtitle: "International Gala Music \nFestival",
              text: "36 Guild Street London, UK ",
            ),
          ],
        ),
      ),
    );
  }
}

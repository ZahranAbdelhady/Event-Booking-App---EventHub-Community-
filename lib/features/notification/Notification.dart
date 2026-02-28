import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/InviteFriendv1/widgets/listTileFriends.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  static const routName = "Notifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification", style: AppStyles.w400s35black),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            ListTile(
              leading: Image.asset(AppImages.icondrwa),
              title: Text(
                "David Silbia ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(
                " Invite Jo Malone London’s Mother’s",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("Just now", style: AppStyles.w400s14white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.primaryWhite),
                  child: Center(
                    child: Text("Reject", style: AppStyles.w400s14white),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.contHome),
                  child: Center(
                    child: Text("Accept", style: AppStyles.w400s15white),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.iconprofile),
              ),
              title: Text(
                "DAdnan Safi ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(
                "  Started following you",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("5 min ago", style: AppStyles.w400s14white),
            ),
            ListTile(
              leading: Image.asset(AppImages.stackimage),
              title: Text("Joan Baker", style: AppStyles.w400s16TextIconblack),
              subtitle: Text(
                "  Invite A virtual Evening of Smooth Jazz",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("20 min ago", style: AppStyles.w400s14white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.primaryWhite),
                  child: Center(
                    child: Text("Reject", style: AppStyles.w400s14white),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.contHome),
                  child: Center(
                    child: Text("Accept", style: AppStyles.w400s15white),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.statcimage),
              ),
              title: Text(
                "Ronald C. Kinch ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(" Like you events", style: AppStyles.w400s14white),
              trailing: Text("1 hr ago", style: AppStyles.w400s14white),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(AppImages.rev)),
              title: Text(
                "Clara Tolson  ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(
                " Join your Event Gala Music Festival",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("9 hr ago", style: AppStyles.w400s14white),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(AppImages.iconprofile),
              ),
              title: Text(
                "Jennifer Fritz ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(
                "  Invite you International Kids Safe",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("Tue , 5:10 pm", style: AppStyles.w400s14white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.primaryWhite),
                  child: Center(
                    child: Text("Reject", style: AppStyles.w400s14white),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 95,
                  height: 36,
                  decoration: BoxDecoration(color: AppColors.contHome),
                  child: Center(
                    child: Text("Accept", style: AppStyles.w400s15white),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(AppImages.rev)),
              title: Text(
                "Eric G. Prickett   ",
                style: AppStyles.w400s16TextIconblack,
              ),
              subtitle: Text(
                " Started following you",
                style: AppStyles.w400s14white,
              ),
              trailing: Text("Wed, 3:30 pm", style: AppStyles.w400s14white),
            ),
          ],
        ),
      ),
    );
  }
}

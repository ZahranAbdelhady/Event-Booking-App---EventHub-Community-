import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/EmptyEvents/widgets/MainContainer.dart';

class EmptyEvents extends StatelessWidget {
  const EmptyEvents({super.key});
  static const routName = "EmptyEvents";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(20),
        title: Text("Events", style: AppStyles.w400s24black),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Center(
              child: Container(
                width: 295,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 145,
                      height: 35,
                      padding: EdgeInsets.all(5),

                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "UPCOMING",
                        style: AppStyles.w400s16TextIconblue,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: 145,
                      height: 35,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text("PAST EVENTS", style: AppStyles.w400s15white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 75),
            Container(
              width: 202,
              height: 202,
              child: CircleAvatar(child: Image.asset(AppImages.emptyevent)),
            ),
            SizedBox(height: 23),
            Text("No Upcoming Event", style: AppStyles.w400s24black),
            SizedBox(height: 13),
            Text(
              "Lorem ipsum dolor sit amet,  ",
              style: AppStyles.w400s16TextIconblue,
            ),
            Text("consectetur", style: AppStyles.w400s16TextIconblue),
            SizedBox(height: 140),
            mainContainer(text: 'Explore Events'),
          ],
        ),
      ),
    );
  }
}

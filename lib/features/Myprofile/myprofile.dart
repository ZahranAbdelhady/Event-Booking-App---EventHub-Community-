import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/Myprofile/widgets/maincontainertools.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});
  static const routName = "Myprofile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile", style: AppStyles.w400s24black)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  CircleAvatar(
                    backgroundImage: AssetImage(AppImages.iconprofile),
                  ),
                  SizedBox(height: 15),
                  Text("Zahran Sayed", style: AppStyles.w400s24black),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("350", style: AppStyles.w400s16TextIconblack),
                          SizedBox(height: 8),
                          Text("Following", style: AppStyles.w400s14white),
                        ],
                      ),
                      SizedBox(width: 20),
                      Container(width: 2, height: 32, color: Color(0XFFDDDDDD)),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Text("346", style: AppStyles.w400s16TextIconblack),
                          SizedBox(height: 8),
                          Text("Followers", style: AppStyles.w400s14white),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 154,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.edit_square, color: AppColors.primaryblue),
                        Padding(padding: EdgeInsetsGeometry.all(10)),
                        Text(
                          "Edit Profile",
                          style: AppStyles.w400s16TextIconblue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About Me", style: AppStyles.w400s24black),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          "Enjoy your favorite dishe and a lovely your friends and family and have a great time. Food from local food trucks will be available for purchase. Read More",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text("Interest", style: AppStyles.w400s24black),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 5),
                        Text(
                          "CHANGE",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  containertool(
                    text: "Games Online",
                    colors: (0xFF6B7AED),
                    width: 116,
                    height: 31,
                  ),

                  SizedBox(width: 8),
                  containertool(
                    text: "Concert",
                    colors: (0xFFEE544A),
                    width: 81,
                    height: 31,
                  ),

                  SizedBox(width: 8),
                  containertool(
                    text: "Music",
                    colors: (0xFFFF8D5D),
                    width: 66,
                    height: 31,
                  ),
                  SizedBox(width: 8),
                  containertool(
                    text: "Art",
                    colors: (0xFF7D67EE),
                    width: 51,
                    height: 31,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  containertool(
                    text: "Movie",
                    colors: (0xFF29D697),
                    width: 67,
                    height: 31,
                  ),
                  SizedBox(width: 8),
                  containertool(
                    text: 'Others',
                    colors: (0xFF39D1F2),
                    width: 73,
                    height: 31,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';

class MainOnboarding extends StatelessWidget {
  MainOnboarding({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  String image;
  String text1;
  String text2;
  String text3;
  String text4;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        SizedBox(height: 20),
        Container(
          height: 210,
          decoration: BoxDecoration(
            color: AppColors.containeronboarding1,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Text(text1, style: AppStyles.w400s22White),
                Text(text2, style: AppStyles.w400s22White),
                SizedBox(height: 40),
                Text(text3, style: AppStyles.w400s15white),
                Text(text4, style: AppStyles.w400s15white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/Filter/widgets/iconFilters.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});
  static const routName = "Filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: 741,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48),
              topRight: Radius.circular(48),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Filter", style: AppStyles.w400s24black),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      iconFilters(image: AppImages.sports, text: 'Sports'),
                      SizedBox(width: 8),
                      iconFilters(image: AppImages.music, text: "Music"),
                      SizedBox(width: 8),

                      iconFilters(image: AppImages.art, text: "Art"),
                      SizedBox(width: 8),

                      iconFilters(image: AppImages.food, text: "Food"),
                      SizedBox(width: 8),

                      iconFilters(image: AppImages.food, text: "Food"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class iconFilters extends StatelessWidget {
//   iconFilters({super.key,required this.image,required this.text});
//   String image;
//   String text;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Image.asset(image),
//         Text(text, style: AppStyles.w400s16TextIconblack),
//       ],
//     );
//   }
// }

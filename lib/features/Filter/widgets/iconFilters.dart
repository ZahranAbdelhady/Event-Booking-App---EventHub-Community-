import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/styles.dart';

class iconFilters extends StatelessWidget {
  iconFilters({super.key, required this.image, required this.text});
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Text(text, style: AppStyles.w400s16TextIconblack),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';

Container containerIcons(String text, String image) {
  return Container(
    width: 273,
    height: 56,
    decoration: BoxDecoration(
      color: AppColors.primaryWhite,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        SizedBox(width: 8),
        Text(text, style: AppStyles.w400s16TextIconblack),
      ],
    ),
  );
}

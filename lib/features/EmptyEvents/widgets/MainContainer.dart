import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/styles.dart';

class mainContainer extends StatelessWidget {
  mainContainer({super.key, required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 271,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.containeronboarding1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text, style: AppStyles.w500s20White),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFF3D56F0),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.arrow_forward, color: AppColors.primaryWhite),
            ),
          ],
        ),
      ),
    );
  }
}

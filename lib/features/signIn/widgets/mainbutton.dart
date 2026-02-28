import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/styles.dart';

class Mainbuttonpush extends StatelessWidget {
  Mainbuttonpush({
    super.key,
    required this.formstate,
    required this.text,
    required this.nameScreen,
    required this.iconer,
    required this.onTap,
  });

  final GlobalKey<FormState> formstate;
  String text;
  String nameScreen;
  IconData iconer;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 271,
        height: 58,
        decoration: BoxDecoration(
          color: AppColors.containeronboarding1,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: AppStyles.w400s15white,
                textAlign: TextAlign.center,
              ),
              //   Spacer(),
              Container(
                width: 30,
                height: 30,
                child: Icon(iconer, weight: 30, size: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/features/onboarding/onboarding.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routName = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController
  animationController; //  علشان اتحكم في الانميشن نفسه لات يعني بقوله هستخدمها بعدين والمتغير ده
  late Animation<double> fadeanimation; // علشان اعمل انيماشن علي الشفافيه
  late Animation<double> scaleAnimation; // ان الصوره من صغيره ثم تبدا تكبر

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    fadeanimation = Tween<double>(begin: 0.2, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.decelerate),
    );

    scaleAnimation = Tween<double>(begin: 0.2, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.decelerate),
    );

    animationController.forward(); // يشتغل علطول
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: scaleAnimation,
                child: FadeTransition(
                  opacity: fadeanimation,
                  child: Image.asset(AppImages.log, width: 242, height: 58),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

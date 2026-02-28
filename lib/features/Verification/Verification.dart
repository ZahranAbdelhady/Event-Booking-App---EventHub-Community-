import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/ForgotPassword/widgets/maincontnerpush.dart';
import 'package:sesion_8/features/Home/home.dart';
import 'package:sesion_8/features/Verification/widget/maincontainerfildnum.dart';
import 'package:sesion_8/features/signIn/SignIn.dart';
import 'package:sesion_8/features/signIn/widgets/mainbutton.dart';

class Verification extends StatelessWidget {
  Verification({super.key});
  static const routName = "Verification";

  GlobalKey<FormState> verikey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    TextEditingController num1 = TextEditingController();
    TextEditingController num2 = TextEditingController();
    TextEditingController num3 = TextEditingController();
    TextEditingController num4 = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: verikey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Verification",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "We’ve send you the verification\ncode on +1 2620 0323 7631",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Padding(padding: EdgeInsetsGeometry.all(10)),
                  maincontainerfildnum(num: num1),
                  SizedBox(width: 22),
                  maincontainerfildnum(num: num2),
                  SizedBox(width: 22),
                  maincontainerfildnum(num: num3),
                  SizedBox(width: 22),
                  maincontainerfildnum(num: num4),
                ],
              ),
              SizedBox(height: 50),
              Center(
                child: Column(
                  children: [
                    Mainbuttonpush(
                      formstate: verikey,
                      text: "CONTINOU",
                      nameScreen: Signin.routName,
                      iconer: Icons.arrow_forward,
                      onTap: () {
                        if (verikey.currentState!.validate()) {
                          Navigator.pushNamed(context, HomePages.routName);
                        }
                      },
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Re-send code in 0:20",
                      style: AppStyles.w400s16TextIconblack,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

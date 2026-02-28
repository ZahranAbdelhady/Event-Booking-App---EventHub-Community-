import 'package:flutter/material.dart';
import 'package:sesion_8/core/utils/colors.dart';
import 'package:sesion_8/core/utils/images.dart';
import 'package:sesion_8/core/utils/styles.dart';
import 'package:sesion_8/features/ForgotPassword/forgorPassword.dart';
import 'package:sesion_8/features/ForgotPassword/widgets/maincontnerpush.dart';
import 'package:sesion_8/features/Home/home.dart';
import 'package:sesion_8/features/signIn/funcIcons.dart';
import 'package:sesion_8/features/signIn/widgets/mainbutton.dart';
import 'package:sesion_8/features/signUp/widgets/maintextfield.dart';
import 'package:sesion_8/features/signUp/SignUp.dart';

class Signin extends StatefulWidget {
  Signin({super.key});
  static const routName = "SignIn";

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signinkey = GlobalKey();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: signinkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 75),
                Center(
                  child: Column(
                    children: [
                      Image.asset(AppImages.signIn, width: 55, height: 58),
                      SizedBox(height: 8),
                      Text("EventHub", style: AppStyles.w400s35black),
                    ],
                  ),
                ),
                SizedBox(height: 13),

                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in", style: AppStyles.w400s35black),
                      SizedBox(height: 20),
                      Maintextfield(email),
                      SizedBox(height: 20),
                      Maintextfieldpass(password),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.rectangle),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                ForgotPassword.routName,
                              );
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Mainbuttonpush(
                          formstate: signinkey,
                          text: 'Sign in',
                          nameScreen: HomePages.routName,
                          iconer: Icons.arrow_forward,
                          onTap: () {
                            if (signinkey.currentState!.validate()) {
                              Navigator.pushNamed(context, HomePages.routName);
                            }
                          },
                        ),
                      ),

                      SizedBox(height: 25),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "OR",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            containerIcons(
                              "Login With Google",
                              AppImages.Google,
                            ),
                            SizedBox(height: 8),
                            containerIcons(
                              "Login With Facebook",
                              AppImages.facebook,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: AppStyles.w400s16TextIconblack,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      (context),
                                      SignUp.routName,
                                    );
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: AppStyles.w400s16TextIconblue,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
